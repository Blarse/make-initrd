#ifndef INITRD_DECOMPRESS_H
#define INITRD_DECOMPRESS_H

#define DECOMP_OK   0
#define DECOMP_FAIL 1

typedef int (*decompress_fn)(unsigned char *inbuf, unsigned long ilen,
	unsigned char **outbuf, unsigned long *olen,
	unsigned long long *inread);

decompress_fn decompress_method(const unsigned char *inbuf, unsigned long len, const char **name);

int gunzip(unsigned char *in, unsigned long in_size, unsigned char **o, unsigned long *olen, unsigned long long *inread);
int bunzip2(unsigned char *in, unsigned long in_size, unsigned char **o, unsigned long *olen, unsigned long long *inread);
int unlzma(unsigned char *in, unsigned long in_size, unsigned char **o, unsigned long *olen, unsigned long long *inread);

#endif /* INITRD_DECOMPRESS_H */

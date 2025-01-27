Return-Path: <linux-man+bounces-2299-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 25CA7A1D8BA
	for <lists+linux-man@lfdr.de>; Mon, 27 Jan 2025 15:51:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 843971642EF
	for <lists+linux-man@lfdr.de>; Mon, 27 Jan 2025 14:51:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B7BF84D02;
	Mon, 27 Jan 2025 14:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b="hStbYbWi"
X-Original-To: linux-man@vger.kernel.org
Received: from box.jasonyundt.email (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5071B4A1D
	for <linux-man@vger.kernel.org>; Mon, 27 Jan 2025 14:50:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=104.248.224.157
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737989462; cv=none; b=n4rNTktknkuZh6JWbQuzctbKNRjpcULqmEUgl/JUDSfjsl57XrdgrDWk16IOgXf3+fhMC2w0P6ATF0igY4kg7QTFODhCXI/9Fn8F/m94oC8AVohc9DM7UD2df2F7gky1uv/Lqp6cqPtYrOk9q6pztOpv9kR3XsiybG3RP7u+kDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737989462; c=relaxed/simple;
	bh=h6fQAeV/m9m3K2KuO/FOulMdU7nk5NdUTs1A4dW/vBY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CahHRaM6SUYdr81vjAVDF6oQz0lWuRKBjiQlLZ6yrICAILOvCZo8qORDstHBAyGGzh22OKFGiGqq4N9xjkDGpTxvHObl8G3PWvoQZa207KLrdcZpoyLNK6lZxyDeheecMex1YSPaQ5kcJf162TZTW+vcSy6vKceBiy+YcNqofNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email; spf=pass smtp.mailfrom=jasonyundt.email; dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b=hStbYbWi; arc=none smtp.client-ip=104.248.224.157
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jasonyundt.email
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=jasonyundt.email;
	s=mail; t=1737989451;
	bh=h6fQAeV/m9m3K2KuO/FOulMdU7nk5NdUTs1A4dW/vBY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hStbYbWiv2b/AUzFmK1pha8gScpJKvBinPoNFEkForp4fQwCioptrhP1AZl/CHtnI
	 KOe/ybkydaRO2qvXoMgBNAmjDApsZiQ1oeVG8OE73J5YT+A2+DsgdJFWZGg0Gd4/iy
	 ZTpFlMs+uqtMctQacPBFP9vfWHW8wwxdj7xVf4kpxM0tAKfVaJhTaVLktxGiYiFQIv
	 xjQLfT2mNp8YT4HrJGrFmTY/CNtCnKTyJXodHQh3SChLEsgVPTKfrru5VbzqAm0nq/
	 tIbNb4qazyoDXrpG31Dvhsef86QjXYiTUUyiymOMQ/uhqF2cOJUtIuvW0GStyqV793
	 +6ra/hYbdC/Rg==
Received: from authenticated-user (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by box.jasonyundt.email (Postfix) with ESMTPSA id A69147E3A0;
	Mon, 27 Jan 2025 09:50:51 -0500 (EST)
Date: Mon, 27 Jan 2025 09:50:49 -0500
From: Jason Yundt <jason@jasonyundt.email>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>, 
	"G. Branden Robinson" <branden@debian.org>
Subject: Re: man/man7/pathname.7: Correct handling of pathnames
Message-ID: <cf6lfplzm5hkmo7lkuyuw6blw4zemrsrhhlucjr4vpwns7m4nu@7pfcxat7bgue>
References: <kvezw2xintnc5cv3ijqefahwt4i3rzczcidp4krmxsafr4azsb@nvbkzgciq3vm>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <kvezw2xintnc5cv3ijqefahwt4i3rzczcidp4krmxsafr4azsb@nvbkzgciq3vm>

On Mon, Jan 27, 2025 at 12:22:49PM +0100, Alejandro Colomar wrote:
> Hi Jason,
> 
> I think the recommendation to use the current locale for handling
> pathnames isn't good.
> 
> If I use the C locale (and I do have systems with the C locale), then
> programs running on that system would corrupt files that go through that
> system.

I agree.  I think that this is just a limitation of the design of
UNIX-like systems.  As long as users are allowed to choose different
locale codesets, mojibake will always be possible.  Sometimes, you just
have to temporarily switch to a different locale in order to make things
work.  For example, I was trying to run some old Japanese software a
while ago, and I had to add a Shift-JIS locale to my system in order to
get it to work.

> Let's say you send me María.song, and I download it on a system
> using the C locale.  Programs would fail to copy the file.

Not necessarily.  pathname(7) says “Paths should be encoded and decoded
using the current locale’s codeset in order to help prevent mojibake.”
In many cases, you don’t need to encode or decode a pathname.  Here’s a
program that copies a file without encoding or decoding any pathnames:

    #include <stdio.h>


    int main(int argc, char *argv[]) {
        FILE *src = NULL, *dest = NULL;
        int exit_status = 0;
        if (argc != 3) {
            fprintf(stderr, "USAGE: %s <src> <dest>\n", argv[0]);
            exit_status = 1;
            goto clean_up;
        };

        // Everything in argv[] should already use the correct character encoding,
        // so we don’t need to do any encoding or decoding here.
        // See <https://sourceware.org/pipermail/libc-help/2024-August/006737.html>.
        src = fopen(argv[1], "r");
        if (src == NULL) {
            fprintf(stderr, "ERROR: Failed to open %s\n", argv[1]);
            exit_status = 1;
            goto clean_up;
        }
        dest = fopen(argv[2], "w");
        if (dest == NULL) {
            fprintf(stderr, "ERROR: Failed to open %s\n", argv[2]);
            exit_status = 1;
            goto clean_up;
        }
        int c;
        while((c = fgetc(src)) != EOF) {
            if (fputc(c, dest) == EOF) {
                fprintf(stderr, "ERROR: Error while writing to %s\n", argv[2]);
                exit_status = 1;
                goto clean_up;
            }
        }

    clean_up:
        if (src != NULL) {
            if (fclose(src) == EOF) {
                fprintf(stderr, "ERROR: Failed to close %s\n", argv[1]);
                exit_status = 1;
            }
        }
        if (dest != NULL) {
            if (fclose(dest) == EOF) {
                fprintf(stderr, "ERROR: Failed to close %s\n", argv[2]);
                exit_status = 1;
            }
        }
        return exit_status;
    }

> Instead, I think a good recommendation would be to behave in one of the
> following ways:
> 
> -  Accept only the POSIX Portable Filename Character Set.

This one isn’t quite a complete recommendation.  The POSIX Portable
Filename Character Set is just a character set.  It’s not a character
encoding.  If we go with this one, then we would need to say something
along the lines of “Encode and decode paths using ASCII and only accept
characters that are in the POSIX Protable Filename Character Set.”

> -  Assume UTF-8, but reject control characters.
> -  Assume UTF-8.

> -  Accept anything, but reject control characters.
> -  Accept anything, just like the kernel.

These last two also aren’t quite complete recommendations.  If a GUI
program wants to display a pathname on the screen, then what character
encoding should it use when decoding the bytes?

> The current locale should actively be ignored when handling pathnames.
> 
> I've modified the example in the manual page to use a filename that's
> non-ASCII, to make it more interesting.  See how it fails:
> 
> 	alx@devuan:~/tmp/gcc$ cat path.c 
> 	     #include <err.h>
> 	     #include <iconv.h>
> 	     #include <langinfo.h>
> 	     #include <locale.h>
> 	     #include <stdio.h>
> 	     #include <stdlib.h>
> 	     #include <uchar.h>
> 
> 	     #define NELEMS(a)  (sizeof(a) / sizeof(a[0]))
> 
> 	     int
> 	     main(void)
> 	     {
> 		 char      *locale_pathname;
> 		 char      *in, *out;
> 		 FILE      *fp;
> 		 size_t    size;
> 		 size_t    inbytes, outbytes;
> 		 iconv_t   cd;
> 		 char32_t  utf32_pathname[] = U"María";
> 
> 		 if (setlocale(LC_ALL, "") == NULL)
> 		     err(EXIT_FAILURE, "setlocale");
> 
> 		 size = NELEMS(utf32_pathname) * MB_CUR_MAX;
> 		 locale_pathname = malloc(size);
> 		 if (locale_pathname == NULL)
> 		     err(EXIT_FAILURE, "malloc");
> 
> 		 cd = iconv_open(nl_langinfo(CODESET), "UTF-32");
> 		 if (cd == (iconv_t)-1)
> 		     err(EXIT_FAILURE, "iconv_open");
> 
> 		 in = (char *) utf32_pathname;
> 		 inbytes = sizeof(utf32_pathname);
> 		 out = locale_pathname;
> 		 outbytes = size;
> 		 if (iconv(cd, &in, &inbytes, &out, &outbytes) == (size_t) -1)
> 		     err(EXIT_FAILURE, "iconv");
> 
> 		 if (iconv_close(cd) == -1)
> 		     err(EXIT_FAILURE, "iconv_close");
> 
> 		 fp = fopen(locale_pathname, "w");
> 		 if (fp == NULL)
> 		     err(EXIT_FAILURE, "fopen");
> 
> 		 fputs("Hello, world!\n", fp);
> 		 if (fclose(fp) == EOF)
> 		     err(EXIT_FAILURE, "fclose");
> 
> 		 free(locale_pathname);
> 		 exit(EXIT_SUCCESS);
> 	     }
> 
> 	alx@devuan:~/tmp/gcc$ cc -Wall -Wextra path.c 
> 	alx@devuan:~/tmp/gcc$ ls
> 	a.out  path.c
> 	alx@devuan:~/tmp/gcc$ ./a.out ; echo $?
> 	0
> 	alx@devuan:~/tmp/gcc$ ls
> 	María  a.out  path.c
> 	alx@devuan:~/tmp/gcc$ cat María 
> 	Hello, world!
> 	alx@devuan:~/tmp/gcc$ LC_ALL=C ./a.out ; echo $?
> 	a.out: iconv: Invalid or incomplete multibyte or wide character
> 	1
> 
> What do you think?

I honestly don’t know what the recommendation should be.  Here’s what I
would need to know in order to figure out what the recommendation should
be.  A while ago, I asked this question on the Unix & Linux Stack
Exchange [1]:

> What does a locale’s codeset get used for?
>
> According to glibc’s manual:
>
> > Most locale names follow XPG syntax and consist of up to four parts:
> >
> > ```
> > language[_territory[.codeset]][@modifier]
> > ```
>
> For example, you could have a locale named zh_CN.GB18030 which would
> use the GB 18030 character encoding, or you could have a locale named
> zh_CN.UTF-8 which would use the UTF-8 character encoding.
>
> Here’s where I’m confused: let’s say that I switch from a zh_CN.UTF-8
> locale to a zh_CN.GB18030 locale. In that situation, some things that
> used to be encoded in UTF-8 are now going to be encoded in GB 18030.
> Which things will now be encoded in GB 18030? Will stdin, stdout and
> stderr use GB 18030? What about argv? What about filesystem paths?
>
> Technically, a program can do whatever it wants and ignore the locale
> completely, but let’s assume that programs are doing the correct thing
> here. What is supposed to be encoded in GB 18030 if I use a
> zh_CN.GB18030 locale?

I didn’t get an answer to that question, so I asked it again on the
libc-help mailing list [2].  I got one response that was super helpful
[3].  That response clearly said that paths should be encoded using the
locale’s codeset.  If you think that answer was incorrect, then I would
like a very specific list of things that should and should not be
encoded using the locale’s codeset so that I can add it to the glibc
manual (and maybe the POSIX standard if I can figure out how to
contribute to that).

[1]: <https://unix.stackexchange.com/q/780404/316181>
[2]: <https://sourceware.org/pipermail/libc-help/2024-August/006736.html>
[3]: <https://sourceware.org/pipermail/libc-help/2024-August/006737.html>

> Have a lovely day!
> Alex
> 
> -- 
> <https://www.alejandro-colomar.es/>


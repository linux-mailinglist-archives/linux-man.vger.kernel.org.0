Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9983A7B5E07
	for <lists+linux-man@lfdr.de>; Tue,  3 Oct 2023 02:17:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229789AbjJCARq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Oct 2023 20:17:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229595AbjJCARp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Oct 2023 20:17:45 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9120BA7
        for <linux-man@vger.kernel.org>; Mon,  2 Oct 2023 17:17:42 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9203EC433C7;
        Tue,  3 Oct 2023 00:17:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1696292262;
        bh=QRgsIf08qNRTj+WbXRe6ZbCa7DknVjzDliGFfP9o+N8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Ux1TxChmo5SwNl4fgsrUVmi7NFHAysIe2J2FRkx9ONd9HxgwJJ85Z3pLOGoXD3NkT
         sUeKeKKwV/mDoeiSjVwHSP2CQWHfcVOqW9HG+rQXZnmrYJYNwkkHQVzqg+Xqct0fJa
         PPrLPzqCY7fcOqvPIKfNYpoV1wkiz6tnahTs0zQPHrjKHi6DDCdA3yQfIp9yIx9tGW
         Lhd/H3G3Kj+8zmUBbSTX8Jv/HBvbxT715YYhrlL0Uv/Nnm8bFrMtHQQaDlbBjAq3s5
         GUcooAZna3++yM9QT0jptRe9/tQnlh1FpflmVKwQM50G2nQ6SKDfCzUZZAEUDn8o5M
         RBvr4qvRzp0GQ==
Date:   Tue, 3 Oct 2023 02:17:32 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Quentin Armitage <quentin@armitage.org.uk>
Cc:     linux-man@vger.kernel.org
Subject: Re: [patch v2] truncate.2: EINVAL is returned for non regular files
 except directories
Message-ID: <ZRtdo6mTiMBmjGbX@debian>
References: <0feddd7ac2b9d59dd8c35e4b3452dfaad7d57788.camel@armitage.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="+GEUX1y/AL3QCv0B"
Content-Disposition: inline
In-Reply-To: <0feddd7ac2b9d59dd8c35e4b3452dfaad7d57788.camel@armitage.org.uk>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--+GEUX1y/AL3QCv0B
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 3 Oct 2023 02:17:32 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Quentin Armitage <quentin@armitage.org.uk>
Cc: linux-man@vger.kernel.org
Subject: Re: [patch v2] truncate.2: EINVAL is returned for non regular files
 except directories

Hi Quentin,

On Sun, Oct 01, 2023 at 03:57:19PM +0100, Quentin Armitage wrote:
> truncate(2) returns EINVAL if the file argument is a socket, a FIFO or
> a character or block=C2=A0device. The current man page indicates that
> ftruncate() returns EINVAL for an fd that does=C2=A0not reference a regul=
ar
> file, but for truncate() the only reason given for returning EINVAL is
> that the length is invalid.
>=20
> The following test program demonstrates the errors returned by truncate():
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D

I tweaked the program a little bit.

> #define _GNU_SOURCE
>=20
> #include <unistd.h>
> #include <stdio.h>
> #include <stdlib.h>
> #include <errno.h>
> #include <sys/types.h>
> #include <fcntl.h>
> #include <sys/stat.h>
> #include <sys/sysmacros.h>
> #include <string.h>
> #include <err.h>

Add a space before the '#', so that git doesn't mess with it so easily.

Also, sort(1).

>=20
> struct {
>   const char *fname;

Use 4-space indent.

>   mode_t mode;
>   unsigned dev_maj;
>   unsigned dev_min;
> } nodes[] =3D {
>   { "/tmp/trunc_file", S_IFREG | 0666 },

Explicitly set ,0 ,0

>   { "/tmp/trunc_fifo", S_IFIFO | 0666 },
>   { "/tmp/trunc_socket", S_IFSOCK | 0666 },
>   { "/tmp/trunc_char_dev", S_IFCHR | 0666, 10, 7},  // Second Amiga mouse=
, /dev/amigamouse1
>   { "/tmp/trunc_blk_dev", S_IFBLK | 0666, 13, 3 },  // Was XT disk /dev/x=
d3
>   { "/tmp/trunc_dir", 0666 },
> };
>=20
> int main(int C, char **V)

int main(void)

is legal ISO C.  Since you're not using them, you can just use void.

> {
>   int n;
>   int ret;
>=20
>   for (n =3D 0; n < sizeof(nodes) / sizeof(nodes[0]); n++) {

We prefer C99 variables for loops (defined in the for line).
Also, 'n' should be of type size_t.

>     /* Create the nodes */
>     if (!(nodes[n].mode & S_IFMT))
>       ret =3D mkdir(nodes[n].fname, nodes[n].mode);
>     else
>       ret =3D mknod(nodes[n].fname, nodes[n].mode,
>                   makedev(nodes[n].dev_maj, nodes[n].dev_min));
>=20
>     if (ret) {
>       warn("mknod(%s) errno %d", nodes[n].fname, errno);

With a recent-enough glibc, the following is a bit simpler:

warn("mknod(\"%s\"): %#m", nodes[n].fname);

>       continue;
>     }
>=20
>     /* Returns EINVAL for IFSOCK, IFIFO, S_IFBLK, S_IFCHR, EISDIR for a d=
irectory */
>     ret =3D truncate(nodes[n].fname, 0);
>=20
>     if (ret)
>       warn("truncate(\"%s\") failed with errno %s", nodes[n].fname,
>               strerrorname_np(errno));

For consistency, the same goes here:

warnc(ret =3D=3D -1 ? errno : 0, "truncate(\"%s\"): %#m", nodes[n].fname);

(I also used stderr for success, since it's still an error report;
it just says there are no errors.)

warnc(3) is available via libbsd (glibc could catch up here).

>     else
>       printf("truncate(\"%s\") succeeded\n", nodes[n].fname);
>=20
>     /* Remove the nodes */
>     if (!(nodes[n].mode & S_IFMT))
>       ret =3D rmdir(nodes[n].fname);
>     else
>       ret =3D unlink(nodes[n].fname);
>     if (ret)
>       warn("unlink(%s) errno %d", nodes[n].fname, errno);
>   }
> }
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
>=20
> Compile the program and run it as user root.
>=20
> output (if program name is trunc) should be:
> truncate("/tmp/trunc_file") succeeded
> trunc: truncate("/tmp/trunc_fifo") failed with errno EINVAL: Invalid argu=
ment
> trunc: truncate("/tmp/trunc_socket") failed with errno EINVAL: Invalid ar=
gument
> trunc: truncate("/tmp/trunc_char_dev") failed with errno EINVAL: Invalid =
argument
> trunc: truncate("/tmp/trunc_blk_dev") failed with errno EINVAL: Invalid a=
rgument
> trunc: truncate("/tmp/trunc_dir") failed with errno EISDIR: Is a directory

Here's what I tweaked, if you want to just pick it:


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
 #define _GNU_SOURCE

 #include <err.h>
 #include <errno.h>
 #include <fcntl.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
 #include <sys/stat.h>
 #include <sys/sysmacros.h>
 #include <sys/types.h>
 #include <unistd.h>

struct {
    const char *fname;
    mode_t mode;
    unsigned dev_maj;
    unsigned dev_min;
} nodes[] =3D {
    {"/tmp/trunc_file", S_IFREG | 0666, 0, 0},
    {"/tmp/trunc_fifo", S_IFIFO | 0666, 0, 0},
    {"/tmp/trunc_socket", S_IFSOCK | 0666, 0, 0},
    {"/tmp/trunc_char_dev", S_IFCHR | 0666, 10, 7},  // Second Amiga mouse,=
 /dev/amigamouse1
    {"/tmp/trunc_blk_dev", S_IFBLK | 0666, 13, 3},  // Was XT disk /dev/xd3
    {"/tmp/trunc_dir", 0666, 0, 0},
};

int
main(void)
{
    int  ret;

    for (size_t n =3D 0; n < sizeof(nodes) / sizeof(nodes[0]); n++) {
        /* Create the nodes */
        if (!(nodes[n].mode & S_IFMT))
            ret =3D mkdir(nodes[n].fname, nodes[n].mode);
        else
            ret =3D mknod(nodes[n].fname, nodes[n].mode,
                        makedev(nodes[n].dev_maj, nodes[n].dev_min));

        if (ret =3D=3D -1) {
            warn("mknod(\"%s\") %#m", nodes[n].fname);
            continue;
        }

        /* Returns EINVAL for IFSOCK, IFIFO, S_IFBLK, S_IFCHR, EISDIR for a=
 directory */
        ret =3D truncate(nodes[n].fname, 0);
        warnc(ret =3D=3D -1 ? errno : 0, "truncate(\"%s\"): %#m", nodes[n].=
fname);

        /* Remove the nodes */
        ret =3D (nodes[n].mode & S_IFMT) ? unlink(nodes[n].fname)
                                       : rmdir(nodes[n].fname);
        if (ret =3D=3D -1)
            warn("unlink(\"%s\"): %#m", nodes[n].fname);
    }
}
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
Compile the program with $(pkgconf --cflags --libs libbsd-overlay)
Run it as user root.

The output (if program name is trunc) should be:
trunc: truncate("/tmp/trunc_file"): 0: Success
trunc: truncate("/tmp/trunc_fifo"): EINVAL: Invalid argument
trunc: truncate("/tmp/trunc_socket"): EINVAL: Invalid argument
trunc: truncate("/tmp/trunc_char_dev"): EINVAL: Invalid argument
trunc: truncate("/tmp/trunc_blk_dev"): EINVAL: Invalid argument
trunc: truncate("/tmp/trunc_dir"): EISDIR: Is a directory



>=20
> Signed-off-by: Quentin Armitage <quentin@armitage.org.uk>
>=20
> diff --git a/man2/truncate.2 b/man2/truncate.2
> index 703f598b3..44750b9e2 100644
> --- a/man2/truncate.2
> +++ b/man2/truncate.2
> @@ -112,7 +112,9 @@ and
>  .B EINVAL
>  The argument
>  .I length
> -is negative or larger than the maximum file size.
> +is negative or larger than the maximum file size,
> +or the named file is a socket, a FIFO,
> +or a block or character device.

The same page has the following below, for ftruncate(2):

       EINVAL fd does not reference a regular file or a  POSIX  shared
              memory object.

You could check that to have consistent wording in both.

Cheers,
Alex

>  .TP
>  .B EIO
>  An I/O error occurred updating the inode.
>=20

--+GEUX1y/AL3QCv0B
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUbXZwACgkQnowa+77/
2zLgwBAAmZJ/+FJAqSFuh2sqK0uzRyb0xOeOU2yd+6ddLxoPf7TxcgOs/QuaadPD
NiUnYBzZ/YDEaxA96QsVUl0vkm4ByABTCT7gVpds+j45YezP26CEN62rbdmsaZxT
yfL0gytAdg1cSowuCAqo/HsRmhuWNt+4XyBOSOPPsk2SravVXj5wjV/4BA1PJg4f
Y6FJFEhMXiqjfS/t9us/vCNSzKhZGg+yWZV4DI150dDAbk2cTXw11ilmflQIb2yF
03cs9+qaaT3OMrs6vFg2QFTB0hCMj+z4aaUNXM8tjzI7OEaJ0CcPZEwMPz497bXA
uH8hDY62H5S21tuc1+TZ1pxDbU/Sag4H0NnQHAADPkggUtBOX0020AhylwbFDoqE
6V7aam5CWk6GgRNLF3imZvfwPomdELTRmwybJuOisU3jZUnNay4qmLnV8mVJ2iQc
3taenXvyk1jR2DR2IOtjFqnMHur1dYIW2zqRTz3NvL2gwR5ksdmdHE6ZuE1PrbEH
Za0ld4Tr0sh3Y3dZ1/QyX8IyllWi8MhfRaZo5YCLCKnVvwBdIEyMX1/hWwQmifN4
XxaYhpphhMDUa9KLlL4/cthktHZPWEX3NaXSY0yzJ5X1goFMM+lPmUUD9v9TGFyd
DkfTswVwahNDK6bTgcDEOt9VjPmu8lOOlCb6ZrtgVjQAWLfUNnQ=
=a9ak
-----END PGP SIGNATURE-----

--+GEUX1y/AL3QCv0B--

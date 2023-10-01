Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29D2C7B47CF
	for <lists+linux-man@lfdr.de>; Sun,  1 Oct 2023 16:11:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234285AbjJAOL3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Oct 2023 10:11:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235060AbjJAOL3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Oct 2023 10:11:29 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 972D8A6
        for <linux-man@vger.kernel.org>; Sun,  1 Oct 2023 07:11:26 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7596AC433C8;
        Sun,  1 Oct 2023 14:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1696169486;
        bh=txOllX44ULSZ/kuB2SXU8HzreB0bxatN1TvX6dvvOpQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=FIvWG/7EBS2I1Q9aNr1oHtDvfxS9Las4m8WOpWXJIa62NTL/JJLDZO+nT4pqlNQq5
         FuVhf9lEfJJwZSCLa2jqRhVlw3746t653kP0oBYg6tHb09tgzVM2Nm+X7A8wlefHSR
         S1rdLPhjRfPQOxZnD2hz/0Fi+aZ5oUvXTnPklvdF+ZO71XuxVQvmPshuHkCtFcOweN
         Adzl5K98VFuVYMS2t7t1PLYuVBqGyFy3ikqhMSAQxioFPGpjHMRDL227CNfHQAgR/8
         ALia/t4c7wULOOSikWmmSKiPCm05juT3hvxDj7VXsRUfUmPxT3b3x8dqPI+3wKuybn
         zAGxREWuCz22w==
Date:   Sun, 1 Oct 2023 16:11:23 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Quentin Armitage <quentin@armitage.org.uk>
Cc:     linux-man@vger.kernel.org
Subject: Re: [patch] truncate.2: EINVAL is returned for non regular files
 except directories
Message-ID: <kjsg7bpozkxuyy5ozuswugnc54c55q2b25ap47unbclzogxwbk@jkhajcbhnlb6>
References: <41b5afb50bec1ab2d78f7a70b43e804ab5994c7b.camel@armitage.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ooqb4dccwwpa7h4d"
Content-Disposition: inline
In-Reply-To: <41b5afb50bec1ab2d78f7a70b43e804ab5994c7b.camel@armitage.org.uk>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ooqb4dccwwpa7h4d
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [patch] truncate.2: EINVAL is returned for non regular files
 except directories
MIME-Version: 1.0

Hello Quentin,

On Sun, Oct 01, 2023 at 02:33:25PM +0100, Quentin Armitage wrote:
> truncate(2) returns EINVAL if the file argument is a socket, a FIFO or a =
character or block
> device. The current man page indicates that ftruncate() returns EINVAL fo=
r an fd that does
> not reference regular file, but for truncate() the only reason given for =
returning EINVAL is
> that the length is invalid.

Please keep the commit message within 72 columns.

>=20
> The following test program demonstrates the errors returned by truncate():
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
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
>=20
> struct {
>   const char *fname;
>   mode_t mode;
>   unsigned dev_maj;
>   unsigned dev_min;
> } nodes[] =3D {
>   { "/tmp/trunc_file", S_IFREG | 0666 },
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
> {
>   int n;
>   int ret;
>=20
>   for (n =3D 0; n < sizeof(nodes) / sizeof(nodes[0]); n++) {
>     /* Create the nodes */
>     if (!(nodes[n].mode & S_IFMT))
>       ret =3D mkdir(nodes[n].fname, nodes[n].mode);
>     else
>       ret =3D mknod(nodes[n].fname, nodes[n].mode,
>                   makedev(nodes[n].dev_maj, nodes[n].dev_min));
>=20
>     if (ret) {
>       fprintf(stderr, "mknod(%s) errno %d - %m\n", nodes[n].fname, errno);

warn(3) or perror(3)?

>       continue;
>     }
>=20
>     /* Returns EINVAL for IFSOCK, IFIFO, S_IFBLK, S_IFCHR, EISDIR for a d=
irectory */
>     ret =3D truncate(nodes[n].fname, 0);
>=20
>     if (ret)
>       printf("truncate(\"%s\") failed with errno %s - %m\n", nodes[n].fna=
me,
>              strerrorname_np(errno));

If there's a failure, we want stderr, don't we?
If so, perror(3) or warn(3) would be more appropriate (and simpler).

>     else
>       printf("truncate(\"%s\") succeeded\n", nodes[n].fname);
>=20
>     /* Remove the nodes */
>     if (!(nodes[n].mode & S_IFMT))
>       ret =3D rmdir(nodes[n].fname);
>     else
>       ret =3D unlink(nodes[n].fname);
>     if (ret)
>       fprintf(stderr, "unlink(%s) errno %d - %m\n", nodes[n].fname, errno=
);

perror(3) would be simpler here; and we already know the string.

>   }
> }
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
>=20
> Compile the program and run it as user root.
>=20
> output should be:
> truncate("/tmp/trunc_file") succeeded
> truncate("/tmp/trunc_fifo") failed with errno EINVAL - Invalid argument
> truncate("/tmp/trunc_socket") failed with errno EINVAL - Invalid argument
> truncate("/tmp/trunc_char_dev") failed with errno EINVAL - Invalid argume=
nt
> truncate("/tmp/trunc_blk_dev") failed with errno EINVAL - Invalid argument
> truncate("/tmp/trunc_dir") failed with errno EISDIR - Is a directory
>=20
> Signed-off-by: Quentin Armitage <quentin@armitage.org.uk>
>=20
> diff --git a/man2/truncate.2 b/man2/truncate.2
> index 703f598b3..9fc14ce5b 100644
> --- a/man2/truncate.2
> +++ b/man2/truncate.2
> @@ -112,7 +112,9 @@ and
>  .B EINVAL
>  The argument
>  .I length
> -is negative or larger than the maximum file size.
> +is negative or larger than the maximum file size, or
> +the named file is a socket, a FIFO or a block or
> +character device.

And please use semantic newlines.

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
       In the source of a manual page, new sentences should be started
       on  new  lines,  long  sentences  should be split into lines at
       clause breaks (commas, semicolons, colons, and so on), and long
       clauses should be split at phrase boundaries.  This convention,
       sometimes known as "semantic newlines", makes it easier to  see
       the  effect of patches, which often operate at the level of in=E2=80=
=90
       dividual sentences, clauses, or phrases.

Thanks,
Alex

>  .TP
>  .B EIO
>  An I/O error occurred updating the inode.
>=20
>=20

--ooqb4dccwwpa7h4d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUZfgQACgkQnowa+77/
2zIloA/+L0q+9I25cqWV47+xnJo66PjFlz9iJHPMQa06qRzlQJz4+beoUEm6SsXa
2E2XkhI6oq0nsBgm2hsDkYtUQdjDxw1Ga/0K+f4NARaF1zRinEp8Yow4CbgWgr/P
pXp6zknb07gHFwOYrx4xPo1h6N34x24IQ/cbu3VSzoE6eDap+6/nlIVozDymfhJx
ErdRo0DaGZudn/RDqpnHA8YG/IYBF1DWTa5mgN4e0spFX+NHBT04oS24JaURxDKf
852/+QfUEpYMj88cTAWi0vgVTjZ/rtzODZfvDsDc5YCoysG/C/277yB92hVIV1cN
HM5RIjzy567rnYFPV+wuEo2JsE61rnlXNYJ8z5RTwzd8BsHBnn0U4x6lS2H0qaYc
0lYwngIiHSwAoCOdOfTXEA6XEi9jnDMw3tS+3k+tnR9m1dqXFKZioY2yJDWtZfIO
keOk3v7ChAXOt99saSpIS+9N8luL+Q8du4UFlJk31hTCGXuTy4zu29X2gH1aVPbR
jGW0aKMeK5cOMkT+WeLPv8zbt4MKc2WrKt/Crdzy+AT501ZveEQfKILpYH43rDBs
rbCWiQUeQYH6mBOXkkXra5xXPr7KbXaQB8f6eZyG9G17FJUspKOcLTEHA/xaJmmZ
FgoTi0Al5ZSZXmFM9dUMZHcks7Wb5U+KpvjrhbZ36dqPn/GNn6A=
=LUSW
-----END PGP SIGNATURE-----

--ooqb4dccwwpa7h4d--

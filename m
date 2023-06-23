Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D72AB73BF1E
	for <lists+linux-man@lfdr.de>; Fri, 23 Jun 2023 21:58:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230317AbjFWT65 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Jun 2023 15:58:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230125AbjFWT64 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Jun 2023 15:58:56 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id B85B6E65
        for <linux-man@vger.kernel.org>; Fri, 23 Jun 2023 12:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1687550331;
        bh=eVzn86Xp6oUOe8ouqoIMAkUlAzPpUHW2Nq8r/759sVU=;
        h=Date:From:To:Cc:Subject:From;
        b=PKackjEdV/7n8sgEmBiGNUd3HBL+tAOW4QP/obk7OMK3TBZ3A/ReBdSnzMBu18G9g
         rHaLS6zoS5pWGwkWAYW4xVjg6jDfHbz2HN/HImaP5YYCg7NzCtsmO7ZmCvEwdVuXXy
         Pir1UWHDsNWTAkxR9M3i/IexeF99zIc+vBhVKzBGyRQCSCdkGxj2c1E1dWohpaBH0z
         ki05RHZp5dKLqAzPRQn9sW9oTfK3veeWxa/CvQmvudyIXOfh+XGwQyHhMEQzWjSEgV
         rFVtNOi3uAJECvGzvMA0UmafcuFs1P0BS7qdINR5olODePpDxv7mrWj8bBQoh5rFee
         E0XqSlqK2obpA==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 2A209141C;
        Fri, 23 Jun 2023 21:58:51 +0200 (CEST)
Date:   Fri, 23 Jun 2023 21:58:49 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [f]statfs(2) shaded as deprecated?
Message-ID: <f54kudgblgk643u32tb6at4cd3kkzha6hslahv24szs4raroaz@ogivjbfdaqtb>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="4ja5usinpsuhzrss"
Content-Disposition: inline
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,PDS_RDNS_DYNAMIC_FP,
        RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--4ja5usinpsuhzrss
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

After the bookworm update I've found that statfs.2 is shaded
[[deprecated]], citing
  LSB has deprecated the library calls statfs() and fstatfs() and tells
  us to use statvfs(3) and fstatvfs(3) instead.

"LSB" doesn't appear to be, well, anything, inasmuch as
  man-pages$ git grep LSB
  Changes.old:        Remove statement that LSB deprecates the functions
  Changes.old:        being deprecated in any of the LSB specs).  Rather, L=
SB simply
  Changes.old:        doesn't specify these functions.  (LSB 1.3 had a spec=
 of
  man2/statfs.2:LSB has deprecated the library calls
  man3/gets.3:LSB deprecates
  man5/elf.5:.B ELFDATA2LSB
  man-pages$ git grep -i 'standard base'

I, logically, know that LSB refers to the linux standard base, but I
don't see how it's relevant here. What's the stated reason? Is this part
of any publication?

This function is not marked as deprecated in either glibc or musl,
and, indeed, on both implementations statvfs is just
  return statfs_to_statvfs(statfs(...));

Normally, like who cares, and statvfs is the standard interface!,
but they carry disjoint data; they agree on
  f_bavail f_bfree f_blocks f_bsize f_ffree f_files f_flag/f_flags f_frsize=
 f_fsid f_namemax/f_namelen
but struct statvfs has
  fsfilcnt_t f_favail;  /* Number of free inodes for unprivileged users */
to which glibc says
  /* XXX I have no idea how to compute f_favail.  Any idea???  */
  buf->f_favail =3D buf->f_ffree;
(this bug appears unnoted in the manual) and, much more importantly,
struct statfs has
  __fsword_t f_type;    /* Type of filesystem (see below) */
which is removed in struct statvfs.

(struct statvfs also has one field for f_fsid whereas it's two fields in
 struct statfs, and this is truncated during the conversion;
 this appears to just amount to a loss of entropy, so.)

The standard fully allows having having the field there as an extension,
and thankfully both musl and glibc carry six ints of padding in
struct statvfs, so this could be done, but isn't.

(Indeed, on glibc/Hurd struct statvfs already has an __f_type in there;
 this should be an uncontroversial change.)

Nevertheless, statfs() is shaded deprecated in favour of statvfs(),
contrary to all implementations, on shaky ground, and statvfs() cannot
actually replace statfs().

To this end, then:
  * note that under Linux libcs, f_ffree =3D f_favail
  * unshade statfs(2) as deprecated
    (instead put a note at the end of the SYNOPSIS saying
     "Use the standard interface (statvfs(3)) unless you need f_type."
     or something to that effect?)
  * post to glibc a patch renaming __f_type to f_type on Hurd
  * post to glibc a patch replacing one of the __f_spares with f_type
  * ibid. but musl
  * once that lands, /then/ maybe mark statfs() as deprecated
    (for weird types and nonportability)
  * add f_type to statvfs(3) as "Filesystem type (Linux only, see
	statfs(2) for possible values)"

I've cooked up the libc patches but wanted to see if we're in agreement
here (and also wanted to have a list link to include in the messages).

Best,
=D0=BD=D0=B0=D0=B1

--4ja5usinpsuhzrss
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmSV+XcACgkQvP0LAY0m
WPGcDA/+Pq9kgpLf2FrVLAf7CSX+Q4LJuU3QjEW0nt3p9IdzKZgagkEaWqcWJBID
+DpSjsKqy6cj2iRea6jrn+sHPuEyN3qg4NoMzzklgnqsvcOSpmwygzj0rmNbaeCk
IcSY/MKnVVm/P1OlygYbXmkbG3BEyCary97yRcKPWUDFkXrFILkOQUOzyieHk/0x
xwG2QAEOhDQ1I3f1y7xob1LcUr8pqFzCjoBP09j5z2NanJtLelUs3H/L6jtXGJvl
aXVeMLR8ceV7WhsQwjX1EYhC17STPJmSIMa4K+BV3XrVL7n85qytHYTb3LxG99su
wG44xtSTCd01ZqKpRyZ5b4YUZlcYowYlFrBDVG6rAQ7Y2P4vrxdtaDqv+l9LotNH
wSkB999dEoc7hqT5GniU9R+4TI6NBi+6vGKGzgEMOwhSiYvKpYWN2vGM+YHLvQLs
/3frAtdki+gwJZm70JmmUtEALgFB1u3kjhT5ALcvBG53nw+ZMhznJjEosrf2qNf9
YJlbxFDcUN2GHxJhC+RsK0whj1C2tbb6LSz1JWWF//gGWW9TZCilqNMfuL+6v9hH
ex7epgnI3vcgqBxKzYl1t7xo6Adya3z/89+PdDeuPPlUOlfBqaQBK8XVGNesCmoy
TmA2H2HOiG5Ov4Co5ITWdww1XHZKK6VfMryPmZU+tXK/BjM6VIA=
=echn
-----END PGP SIGNATURE-----

--4ja5usinpsuhzrss--

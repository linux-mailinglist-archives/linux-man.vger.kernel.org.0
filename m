Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D0ED77A258
	for <lists+linux-man@lfdr.de>; Sat, 12 Aug 2023 22:10:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231209AbjHLUKb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Aug 2023 16:10:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231223AbjHLUKa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Aug 2023 16:10:30 -0400
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id F3EF5E6F
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 13:10:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1691870612;
        bh=HXgVfQLpUe3BJLUsz2ZIKbmHFu4wapyJ7B0L02ZZaaQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=IhxOmEMqUV/8LeY9o+Tvu2u86w+ZEGN6nm67NgrLCiVI/Xdj6LYz/Wi19qgPCbyJl
         Nwf+PWhjO6M5+KoC4FPO+7RZciMVwnFcjuVAjy0w5V71OWoakbDOGlyNSAcZrh/ert
         yhc6d9GM3mFQBA9LlDjYebSmCSUhRhQtbmInG+0OLBLNaBXvp5AKvN+XF8qlbJ0GKA
         83HEZS8YHns7e8YmfogdZ4ExtYcQR2kQeOZe3M85z0n9e6WYTOSalMXopG5I4gy/6n
         Ne7BF2p7wFTYCGFn97ohajF9GyyPOtwlwcIFr9a1/DjFO28tZIaYCeTmxKrq0ICe26
         vCPp1l5x6vZuw==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 0D51C8398;
        Sat, 12 Aug 2023 22:03:32 +0200 (CEST)
Date:   Sat, 12 Aug 2023 22:03:30 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     alx@kernel.org
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2] tmpfs.5: document size/blocks=0 and nr_inodes=0 <=>
 unlimited
Message-ID: <yqduyx6v7k3ziu2fcwoqibrwwrg2fznga6l5xsvwgxvnkcsu4m@gqbl5hu4bw5m>
References: <20230812190401.4bf7xay4fws43tza@jwilk.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="byhriauexhe3rg6e"
Content-Disposition: inline
In-Reply-To: <20230812190401.4bf7xay4fws43tza@jwilk.net>
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--byhriauexhe3rg6e
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Bitten by this again. Behaviour blames back to at least 2005
(probably original to shmem.c), documented upstream in
Documentation/filesystems/tmpfs.rst (formerly .txt).

For example:
  # mount -t tmpfs -o size=3D0 tmpfs /etc/
  # df /etc/
  Filesystem 1k-blocks Used Avail Use% Mounted on
  tmpfs              0    0     0    - /etc
  # head -c100M  < /dev/urandom > /etc/passwd
  # df /etc/
  Filesystem 1k-blocks Used Avail Use% Mounted on
  tmpfs              0    0     0    - /etc
  # ls -l /etc/passwd
  -rw-r--r-- 1 0 0 104857600 08-12 19:55 /etc/passwd
  # du /etc/passwd
  204800  /etc/passwd
whereas the current manual insinuates head should ENOSPC instantly.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man5/tmpfs.5 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/man5/tmpfs.5 b/man5/tmpfs.5
index cdd5f2fd8..5274e632d 100644
--- a/man5/tmpfs.5
+++ b/man5/tmpfs.5
@@ -51,6 +51,8 @@ .SS Mount options
 .BR size "=3D\fIbytes\fP"
 Specify an upper limit on the size of the filesystem.
 The size is given in bytes, and rounded up to entire pages.
+The limit is removed if the size is
+.BR 0 .
 .IP
 The size may have a
 .BR k ,
@@ -89,6 +91,8 @@ .SS Mount options
 The maximum number of inodes for this instance.
 The default is half of the number of your physical RAM pages, or (on a
 machine with highmem) the number of lowmem RAM pages, whichever is smaller.
+The limit is removed if the number is
+.BR 0 .
 .IP
 Inodes may be specified with
 .BR k ,
--=20
2.39.2

--byhriauexhe3rg6e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmTX5ZIACgkQvP0LAY0m
WPGvMw//VaynhZfoQDwIdZHyI56e/83J/Psxaf77HcKXpM5T6QOwpqoUCBIQnXM+
/sR5Yq6RfFuqFIejt8eJx3DVBVa/um0VDuY9lvH3D3g+fvCykUx7CVx82kRoJ8ef
KM98u56FxWZiSwZ7K1A7n6gyFPWAcxJ/xnKkeESfuR8Sqbi8O5sllk2q1t09ao+C
mMqxFmnRsbDCd8YSTy3tiAsh6dzrB+2Hl6esZLgrmE4nBzv7IVwPoOMXZeDnPjkF
67oHnG5prhv15VxhXn9WdSi7UwnLBW6f3a0qFmW2DqsL2T+9K/iJuUqItNW8w8O9
PuAC4bxT88GHyGOQMc45wq51sfFwWJ4pc386euVb0A88eUjteTcEE1K+dRi6WMO1
fmNpIOngFOeREmURU/O7gwwVEqVoocfQLQVsODfcw9e5JwuE9zwUSWXh9gdhccMG
PivH93mcdwFgkylGSTBjWyC8lA8AwAbjOEGMzv3pOywRjWcMYOiqZYcnjNwRwKAa
S2BA+J7l4r0vyrmT6N0LvMbU6WHOEBqd4U26tShs0tGvqlmXnCvx7z38N+BYHEMf
QJ1K1Bpe3S2lQ31la+fAbNYRLzfhIH1k4MQ8PSjzSi/QJE4kH4Vo44qZMCtqK0kR
UiY3I4+aIwVrbDNM608LW+K7j40MK8M3/c+ObeBJuMd0L4MlTrE=
=+gMR
-----END PGP SIGNATURE-----

--byhriauexhe3rg6e--

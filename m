Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E92676C5892
	for <lists+linux-man@lfdr.de>; Wed, 22 Mar 2023 22:12:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229501AbjCVVLo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Mar 2023 17:11:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229738AbjCVVLl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Mar 2023 17:11:41 -0400
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com [IPv6:2607:f8b0:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C64A323A44
        for <linux-man@vger.kernel.org>; Wed, 22 Mar 2023 14:11:38 -0700 (PDT)
Received: by mail-pg1-x52f.google.com with SMTP id x37so11412014pga.1
        for <linux-man@vger.kernel.org>; Wed, 22 Mar 2023 14:11:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dilger-ca.20210112.gappssmtp.com; s=20210112; t=1679519498;
        h=to:date:message-id:subject:mime-version:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bQDM5I2/8RiogP9VeZGWSxa7JSdKA7lXDpSJ2t1cvWg=;
        b=QFJoYhxHvQPb1pRDQYXsxKJkUOuyuCpi4kLxQn9V9AWBu7e7xCGWVPZC/6NnI/H8KK
         HGC3+3LdXMJKCveUgzEykimkabXcjRmSRNgVBW4kzUxx8pczFZ0JjcNXslcFpZFilTnJ
         KIdelcsuxnS7mew2LmshDAZsZfscF0nzTKBUFBvC7tBHLQZ7na9phj+hsdToxDIvGfpB
         s+y2m6Ogy8MDYjAx7yj/rhR9I1kUo8StNzJGJ7Ec+p/IHRG6/v+BWyPx8NaPsWo+19JJ
         V306IEKV9I7NX0l0LIFyVpDR/PjA4Mggf+cPw60KfRdYPbJE7o8EfWDmNhY5Xw5ttSfH
         HMOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679519498;
        h=to:date:message-id:subject:mime-version:from:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bQDM5I2/8RiogP9VeZGWSxa7JSdKA7lXDpSJ2t1cvWg=;
        b=bdSJr2Lz0fE9BePM/QIyGV0Ebc8qYmbbsAs+TZlO+VpygYQvoEYE/OnNa4AFvYoVHh
         sAUFQIUMX8fsfnaknP/ymL6OHeG0T1tija+2+Cxw/clIIfgSafuCgnLsYxjkiS80kGM7
         OmM0NPAeKyHkFDZNOglp234kjGgk2QIMoKnRHodw4xU8qNcP4IFFn4ETIDb4c25Yeglp
         M1h99xJMrmGhCl8xsrOPGS9m/lXwMjwr3W8ZlDgGhZeXHHIYrwe4L4J44UvhEEwc7X9i
         zKl8ycnFo6WlRiSs3tCBSq8muYYPzX9LPV+Kdx9oXfjGhHMg5bdkCuSM+iUtiViSTVxx
         4Pmw==
X-Gm-Message-State: AO0yUKWngbVnRA6TsYBVf4bhBlWwbYNbBugn3fZa5jMWiYHMrfpAlvS4
        hl5AWIUiV5fqW/G8sollWqvf+y/iOWx8V4TMqkwErw==
X-Google-Smtp-Source: AK7set/x7/WRH3S+QjkXQrN+2SmCLBxlLWX85x3EgkdqMTd2MobHrx1vf3qrb25pVCKI9tX1fIr2pg==
X-Received: by 2002:a62:4e06:0:b0:628:9b4:a6a3 with SMTP id c6-20020a624e06000000b0062809b4a6a3mr3224478pfb.2.1679519497699;
        Wed, 22 Mar 2023 14:11:37 -0700 (PDT)
Received: from cabot.adilger.int (S01061cabc081bf83.cg.shawcable.net. [70.77.221.9])
        by smtp.gmail.com with ESMTPSA id e12-20020a62ee0c000000b005d866d184b5sm10388163pfi.46.2023.03.22.14.11.36
        for <linux-man@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Mar 2023 14:11:36 -0700 (PDT)
From:   Andreas Dilger <adilger@dilger.ca>
Content-Type: multipart/signed;
 boundary="Apple-Mail=_3477B223-52DA-4C07-8659-5B2ED86D9CFD";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Subject: [PATCH] man7: improve example in utf-8(7) page
Message-Id: <692C1250-7DDF-45E7-83D4-77BB4494608E@dilger.ca>
Date:   Wed, 22 Mar 2023 15:11:49 -0600
To:     linux-man@vger.kernel.org
X-Mailer: Apple Mail (2.3273)
X-Spam-Status: No, score=0.0 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--Apple-Mail=_3477B223-52DA-4C07-8659-5B2ED86D9CFD
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

The first example provided in the utf-8(7) page (encoding for char
"0xa9") is not a very good one to use.  The man page reports:

   The Unicode character 0xa9 =3D 1010 1001 (the copyright sign) is
   encoded in UTF-8 as

      11000010 10101001 =3D 0xc2 0xa9

This might have the reader believe that the UTF-8 encoding for any
ISO-8859-1 char is "0xc2 <char>".  This is actually a coincidence
that this is true, since "1010" is both starting the second UTF-8
byte and top nibble of "0xa9", according to the "Encoding" section
for symbols in 0x80-0x7ff range.

Instead, use another character for the example that does not have
"10" as the top bits of the first nibble.  Emphasize the encoded
bits in the examples to make it clear which bits are holding the
character and which are the UTF-8 format.

Signed-off-by: Andreas Dilger <adilger@dilger.ca>
---
 man7/utf-8.7 | 23 +++++++++++++++++------
 1 file changed, 17 insertions(+), 6 deletions(-)

diff --git a/man7/utf-8.7 b/man7/utf-8.7
index 015d4b746..6e96c2f27 100644
--- a/man7/utf-8.7
+++ b/man7/utf-8.7
@@ -123,18 +123,29 @@ The UCS code values 0xd800\[en]0xdfff (UTF-16 =
surrogates) as well as 0xfffe and
 According to RFC 3629 no point above U+10FFFF should be used,
 which limits characters to four bytes.
 .SS Example
-The Unicode character 0xa9 =3D 1010 1001 (the copyright sign) is =
encoded
-in UTF-8 as
+The Unicode character 0x0d7 =3D
+.I 00 1101 0101
+(the multiplication sign) is encoded in UTF-8 with two bytes (high bits
+.IR 110 )
+as:
 .PP
 .RS
-11000010 10101001 =3D 0xc2 0xa9
+.RI 110 00011
+.RI 10 010101
+=3D 0xc3 0x97
 .RE
 .PP
-and character 0x2260 =3D 0010 0010 0110 0000 (the "not equal" symbol) =
is
-encoded as:
+and character 0x2260 =3D
+.I 0010 0010 0110 0000
+(the "not equal" symbol) is encoded in UTF-8 with three bytes (high =
bits
+.IR 1110 )
+as:
 .PP
 .RS
-11100010 10001001 10100000 =3D 0xe2 0x89 0xa0
+.RI 1110 0010
+.RI 10 001001
+.RI 10 100000
+=3D 0xe2 0x89 0xa0
 .RE
 .SS Application notes
 Users have to select a UTF-8 locale, for example with
--
2.31.1


--Apple-Mail=_3477B223-52DA-4C07-8659-5B2ED86D9CFD
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iQIzBAEBCAAdFiEEDb73u6ZejP5ZMprvcqXauRfMH+AFAmQbbxUACgkQcqXauRfM
H+DYOQ//Rszunnv+Y/rUt82NAS2bQtpsk5ztfQv7L6RjAzVTdf3CfDZSMhgMhmdq
UMK6Je2bVCBcBfwZOrQT+EEKS8v9yqpjnSe2K3CZZCVFUhisaKJ2AfmnFek1qiZU
U0RtZh9/ELd6f6ziy9CZ7IbPqJmZooa2P8cx/u8qrv8SGN4blyct/8jLeKWLpnFO
N+HPtvN0zX8WRZJGlmGd5s4IwpZptBOI97Xa/4gzerPteCAQ4jtcZPa4tPaA036E
ajpdRX5ASbULH0qmopXkNEtm+PO4NvLnT/7w+/sLGyNMIh4jEQo3wyN6gWqvddPO
zVXrZPbsBaP5BaSIDLjvWdRFhijsQWMcBxJQZgDF7NgMaspjBQ+IwSglmj2hkQtb
R0PV2vs/7zIbfpsrPJ+WrE5XFEjAtK/yZ0jjkYHgeUrQcc0486wWP2J93WpDQ3wT
4tZLGd//wFFsSh3kZcRKr0yuf4MDwSo9dlJH8ccvSKvSAFhrpgU2GDG/1qUWqLUq
63zWV5uDfk4RhvIud9gt/ynHkoXrcacYKYVmL6PkeiwIvZ1cO+KQorS9iPgmIjAF
TtD9u69aoekfEDrRABbKVnO1qw9UH/S/BsHbTmuGkvzwh5Jmkbxs8xjiIpEn8n4N
7ctkcT43EIsir6z6H2MhY/J1Rz4WtpsrB85X047XX5IKaWvy8Bw=
=j1B6
-----END PGP SIGNATURE-----

--Apple-Mail=_3477B223-52DA-4C07-8659-5B2ED86D9CFD--

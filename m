Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 00BB773BD46
	for <lists+linux-man@lfdr.de>; Fri, 23 Jun 2023 18:55:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231892AbjFWQzN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Jun 2023 12:55:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231873AbjFWQyp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Jun 2023 12:54:45 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id B566510C
        for <linux-man@vger.kernel.org>; Fri, 23 Jun 2023 09:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1687539278;
        bh=vS+xyvidgqECW7+yq4OZTkxOLz47ty58ygJmP2tTrEw=;
        h=Date:From:To:Cc:Subject:From;
        b=n9nC7xEQI+j4/X/9wkeWoHTjVXZFHEFKPe9VGAJPublJ09NHoAbjOz65EbBrWJij7
         L3eEgRCADAd8zip3dxMlJzkjxDJF1PBlTtv2JXc+J17khHF6eK5set3iCA2fCJAtqB
         hnzfQSMC2Ango6hpPJp/ULEkDe9yQnPdY/fNONmPXhVYHHIFPSiXNIFX1cN6WNlX44
         XO8YnmvPo9HKb6+FROe/lbn+LhbpilDYZmcjiYh4ki/E7uh4bJoUdJ2TIipigAoD4Y
         bkYGRech0YU230+GL4QkDDoKyv26itqVuhZa86DOklKKv6s/qLkegHmn7mKP57DbwM
         tDeq+iwXfoXKQ==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 9E293D78;
        Fri, 23 Jun 2023 18:54:38 +0200 (CEST)
Date:   Fri, 23 Jun 2023 18:54:37 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] memchr.3: rawmemchr doesn't have an n parameter
Message-ID: <etk3j3tom3mzgm43gm5bpiwrittjrpf6zriqikhw2xsej6ltse@3gnfru2czeyu>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="mupcxc5hadd35tno"
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


--mupcxc5hadd35tno
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

The /point/ is it's unbounded;
  git grep -F 'void "' | grep -F '[]'
didn't return anything so I reverted it to a void*.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/memchr.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/memchr.3 b/man3/memchr.3
index e2916dc9a..030806aa0 100644
--- a/man3/memchr.3
+++ b/man3/memchr.3
@@ -23,7 +23,7 @@ .SH SYNOPSIS
 .BI "void *memchr(const void " s [. n "], int " c ", size_t " n );
 .BI "void *memrchr(const void " s [. n "], int " c ", size_t " n );
 .PP
-.BI "[[deprecated]] void *rawmemchr(const void " s [. n "], int " c );
+.BI "[[deprecated]] void *rawmemchr(const void *" s ", int " c );
 .fi
 .PP
 .RS -4
--=20
2.39.2

--mupcxc5hadd35tno
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmSVzk0ACgkQvP0LAY0m
WPHqfQ//U/5ig+o7pFv9f6UBqgEE6mg5TjPeYKwZ7N0Rq/7oUlIDomBuTCB6oauN
TLK2UdQYxYYBSrRw8PA03fWo+pqXTv2i2GgKwtW9hSB5a5aJsZYNoSknzK/xuR/M
rF9ImBiFfaBhgspvzCg0zW4jU1Xc3Pfd42ZZOw8UxFegmtXWOaBpqk2dHhNIpMXl
p8sXktQD0y9DUC/iBKKpqiRlfJmwppzNiwfzbid+43uouY19iw5Q0oKkpnUhcCev
TdbeseWcxJ1CpRZCoXwyV0eiR+go/q2aP/bIbQ9Ue3ywdG7tqVnxiswpMBYFyDva
SL6/2HGWLdsTSX7y13HQ7Pcgd9XH6Mp8XfE3I9vISKaAZS4h1HXFbbKJlvJJ8UeI
Ov0OpkvdLOjhDE3Fdpwn9sAHyhcOrj6OcpujqvK0XrlaKS3xElxb+B6IYazABc7Q
GpBIE0veM/wjfngfIqaRfsoJwJaSeJJZIHxGIJ6/tN5VY3rOa8MlctiTU8n1PfyO
SQPDfyi/X8jbSGECCJ0Uari/qYGa6/1afvtKiH7LQd2myNiyTT63L4fJASRvild1
3OwdYUj/t5cHz5Br50akwOQMGUtj2AorajSYUmyojICyoqaj4b36UkstdYkZUNt8
ouCmuHeBmXppEZmXnkvztyh789cf7xQfb4lpw6nRwKKrrYtwhAQ=
=sgWv
-----END PGP SIGNATURE-----

--mupcxc5hadd35tno--

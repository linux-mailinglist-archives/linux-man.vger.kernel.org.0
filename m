Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DCE5479EB22
	for <lists+linux-man@lfdr.de>; Wed, 13 Sep 2023 16:31:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241070AbjIMObM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Sep 2023 10:31:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240574AbjIMObK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 Sep 2023 10:31:10 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D070290
        for <linux-man@vger.kernel.org>; Wed, 13 Sep 2023 07:31:06 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2AD6FC433C8
        for <linux-man@vger.kernel.org>; Wed, 13 Sep 2023 14:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1694615466;
        bh=kmWdkuNsZiTyuL+H/6tP2eM412l4/4AA3hKyk/ZJwjs=;
        h=Date:To:From:Subject:From;
        b=UAqhwwEYQnz+OUSNOU1MVrHZRonKT50rzaaTCHWOePbRAz3AfrSleKnOZ2y9JrDCe
         daJf5+6Ikdxz0STLaWb8T1O51fmOkmr4rAVrmjJfoqCczoDngmEqgeYrdEbob82tMM
         U+W+HUbedmVvBvbs8axpe0EGH58d33zqIf30lguPaUvqD/Bl5KNLcgfSjqGF/6Esse
         i58o/yhxbv6RvlcDK6vYjhbJj9AJVvyHPUD9veOLoJzGuJVCCW4GU8Pv1w0xSCuCbT
         PJKCR1DS7w+xPtT6hYnZZirQXq8EndhyqpWv402LSJF6rubB2InrB0ME5+peUn14ML
         hVZKH/fjNHRLw==
Message-ID: <a8269940-3c85-4c67-b733-886b443a2f5e@kernel.org>
Date:   Wed, 13 Sep 2023 16:30:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To:     linux-man <linux-man@vger.kernel.org>
From:   Alejandro Colomar <alx@kernel.org>
Subject: New 'contrib' branch
Organization: Linux
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Vysp0Bp828pUHyPsPOu0OY0P"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Vysp0Bp828pUHyPsPOu0OY0P
Content-Type: multipart/mixed; boundary="------------jwqKSN011yIwzRmSRUkqSyOA";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: linux-man <linux-man@vger.kernel.org>
Message-ID: <a8269940-3c85-4c67-b733-886b443a2f5e@kernel.org>
Subject: New 'contrib' branch

--------------jwqKSN011yIwzRmSRUkqSyOA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi all,

I've added a new branch, 'contrib', where I will apply patches from contr=
ibutors.
That branch is going to be unstable, and often rebased.  The purpose is t=
o have
some buffering before adding stuff to master, to prevent some mistakes, l=
ike
missing info in commit messages, or accidental pushes.

Cheers,
Alex


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------jwqKSN011yIwzRmSRUkqSyOA--

--------------Vysp0Bp828pUHyPsPOu0OY0P
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUBx6IACgkQnowa+77/
2zI7RRAAgAUaaSUV+b7DfWymiVXxAdtybVyqT6Sujta/GdgjFRsNp4AnD/bou4lU
ffPwEqW16ksYd/54bRFnB9VvG/hOpOd5aFBXNhMYgIdJUueTp5n1We4rwhb/YPyB
vAh7cNtMFgb68SuuG9fdlOJau+hB+hHFT6ucpJ4rTre6Fdjla/x2DkAi0RlY8gZ4
3SiGHpBnUI/L91XSOMBf/7LD6a3ADOqGrFUpulcx3t62ZX40RpSf9u+IwerlW4De
1jidFI+H1YVBhb9x/6tsYZF5cTOMRSgFliGD8iNr2TCrZ2vM634kF2xsPCmpPWvl
7BoniXlmVnz9d8uOgbI0F+xBbNGHMs8/Lzh1iHqOwAeAfUeGs1jeGp2nRdKfP/iG
eS25b6JibbQLaqqqodksqiH6e4iPWLWIQloiX4M8Txy1TrnUTNZllFWVRP5MqNgG
WgEQe49T04q2j83uzj10cGJf+PbZfiByNaR9jVFZG2Jkc6h5ugm51h+2yRlqQoQn
QN4ZS38puEeXDJY0nG89d9kolIvgWqi+39z2Fa2wcGnb+nCh3ZrE7EKzSKLSspmS
6OsUaX97T1VD91kmrVIwVzEnlhGCLHwjZFa2GXW9EgP54wHy/wR203ywdK2T2U+8
MlXA5eaa6n4e99+F/hfjCgo4iBowV0q1fZCOLUB30gU0Jo5/f4Q=
=VW+e
-----END PGP SIGNATURE-----

--------------Vysp0Bp828pUHyPsPOu0OY0P--

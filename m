Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 03A7679EAD2
	for <lists+linux-man@lfdr.de>; Wed, 13 Sep 2023 16:17:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241185AbjIMORu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Sep 2023 10:17:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239467AbjIMORt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 Sep 2023 10:17:49 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F381393
        for <linux-man@vger.kernel.org>; Wed, 13 Sep 2023 07:17:45 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18064C433C8;
        Wed, 13 Sep 2023 14:17:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1694614665;
        bh=TXYrjemg3S7v4GjHYiaCi7OqTbfRIYpmagMABBxJtCw=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=Ut7ZVbSY5XJ4rA/k21AfowVe8uPdE6u/GzTO+AHo2kfOPVX7fRJGo5S+TZy06uXco
         Rk6Pj4UWGruQ+Vo5RQiaWeQyPDLzD33+sqN6bdrafwKIUGFSYoe17cLVPBcUk9VArD
         KcgLBsY/KB5GqtVeAMJyZORtsgtDlM8+4HzwAbkgzL4CdaXo67Oqc1Z0+S3P7lnvhx
         EXkECftfk5KAVzRQCdvZGZ3uozT+5lAPZCApq5puuT6384LaTpJ+/qj1RHpqDskoDg
         wmlC3Woz3DMIQI7tv5vG3QR5upAIDpqC4wtEn8PxHJkzos7WXRJtg5SsFyjN2h0XLc
         rRCEww0QzVhAQ==
Message-ID: <7e813d02-30cc-468f-9753-00a435cf2b3f@kernel.org>
Date:   Wed, 13 Sep 2023 16:17:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] inode.7: correct the field name for number of
 blocks
Content-Language: en-US
To:     Avinesh Kumar <akumar@suse.de>
Cc:     linux-man@vger.kernel.org
References: <20230829103004.18459-1-akumar@suse.de>
 <20230829103004.18459-2-akumar@suse.de>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230829103004.18459-2-akumar@suse.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------LjfZAQnZOCohC0PiZEKt5yGl"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------LjfZAQnZOCohC0PiZEKt5yGl
Content-Type: multipart/mixed; boundary="------------7m9xLDudkknPMO2hpekEwCAo";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Avinesh Kumar <akumar@suse.de>
Cc: linux-man@vger.kernel.org
Message-ID: <7e813d02-30cc-468f-9753-00a435cf2b3f@kernel.org>
Subject: Re: [PATCH v2 2/2] inode.7: correct the field name for number of
 blocks
References: <20230829103004.18459-1-akumar@suse.de>
 <20230829103004.18459-2-akumar@suse.de>
In-Reply-To: <20230829103004.18459-2-akumar@suse.de>

--------------7m9xLDudkknPMO2hpekEwCAo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Avinesh,

On 2023-08-29 12:30, Avinesh Kumar wrote:
> Fixes: b48c75727c64 ("inode.7: New page with information about inodes")=

> Signed-off-by: Avinesh Kumar <akumar@suse.de>

Patch set applied.

Thanks,
Alex

> ---
>  man7/inode.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man7/inode.7 b/man7/inode.7
> index 5140fb069..7b7e4dcd9 100644
> --- a/man7/inode.7
> +++ b/man7/inode.7
> @@ -98,7 +98,7 @@ This field gives the "preferred" blocksize for effici=
ent filesystem I/O.
>  an inefficient read-modify-rewrite.)
>  .TP
>  Number of blocks allocated to the file
> -\fIstat.st_blocks\fP; \fIstatx.stx_size\fP
> +\fIstat.st_blocks\fP; \fIstatx.stx_blocks\fP
>  .IP
>  This field indicates the number of blocks allocated to the file,
>  512-byte units,

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------7m9xLDudkknPMO2hpekEwCAo--

--------------LjfZAQnZOCohC0PiZEKt5yGl
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUBxIYACgkQnowa+77/
2zL1GA/9HGdntJ4jbdMLcqA5VU4egR+SRGUCQJg8qWCtLfXtJqFW+txxKK9a8iXt
7RWgz3p9D4ogyFw5bLudnlciuRE63xyivAf29c1Qzn+iDVUGF6fPyOZqdaiT8tvk
iOFFzCW9NOx5rpOKCKE5uFv3mJKcE0973Y1Rh06RHL2R0D0joye9pm2Ffv93iYLT
WEg9IDDtW7rpTulCTodTqk12rLeY/jyrZpMc1clU/XI8SoI0UGg1Pb4oY0pKTKmR
+3uCxXBYmU9w1Pns/5azfzYV3zTYJLE5ptxG27cAfucqgM5bLoNJwDkc3C3CMj2T
I9vbtB/ytMbWeRLK88bmESMIeid0314slsdHT7tmi75+6v/I9rDDCszxA3VjJ4zE
boxrMqZllTU326b+KiqTxybRQ8Gy2qEYMLWpApDvHPvQhllb+1ccCSXFg0MYcL8g
y/BPvV2Jja3UvP/FrcUwdfM4+sSIJI+BdE1Wzbbd4rTEbWcNs6zrhDqvpl92O7mV
9EXLjtzMG5AIsbVwZY4TjnDgTCChhTP+D0RlkyB/1wutL+HSTq90HnreaInykaLI
hpqBXPHHX+Ca1bDcK/aetSZwTBqCB9Il5QwOP6ev2yvkuJK/mgP/JNbTMNgXbVQj
bLEQSgtgBM272KSMPEpFV/Qrpcb6NgZOrjRA2H2pH/R8hL3u+h8=
=sMVR
-----END PGP SIGNATURE-----

--------------LjfZAQnZOCohC0PiZEKt5yGl--

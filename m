Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F7AB78C1BB
	for <lists+linux-man@lfdr.de>; Tue, 29 Aug 2023 11:51:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232172AbjH2Juv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Aug 2023 05:50:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233834AbjH2JuY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Aug 2023 05:50:24 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C527E9
        for <linux-man@vger.kernel.org>; Tue, 29 Aug 2023 02:50:22 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id EB7C76146B
        for <linux-man@vger.kernel.org>; Tue, 29 Aug 2023 09:50:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1C7BC433C7;
        Tue, 29 Aug 2023 09:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1693302621;
        bh=HfZo9M+wI5BEe6RMukmvCTqwCg4oz6B+piLTncRXnP4=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=feVhDVGelripjt3ClmKH24+pFlvdMDzxUOOX2njr8dT8DsokRaQ+5f++4BkQkUcu2
         PGevmOxB1ZYmBuZaKfRyIM+OaFIJURYYcIlb90R5NR/Hr9k+58RuonEVOw2pvYG3H+
         6/irmQIobrh92e+yQvd45wIwwuVaUjntOY3AEPFpyxyf4vi2ODqqjQjq77KZ6bGe1M
         ea7prCIWWL70p4IqVxBafZ4mWAG/uPL7Ce0vcDrJr/eH+lsH44C6PoSpJ7RQsSIf1L
         yNvtH76ntZ1qOjObItP/ovM/dPEiNcAPLcqL4HacmU6h6Ejv2Z4PMj5xh8QD63l1Xz
         SIBlA0pkFexgQ==
Message-ID: <4dde357a-23f9-fc1b-c13b-406f8393a476@kernel.org>
Date:   Tue, 29 Aug 2023 11:50:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH 2/2] inode.7: correct the field name for number of blocks
Content-Language: en-US
To:     Avinesh Kumar <akumar@suse.de>
Cc:     linux-man@vger.kernel.org
References: <20230829090335.14051-1-akumar@suse.de>
 <20230829090335.14051-2-akumar@suse.de>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230829090335.14051-2-akumar@suse.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------763DNJAwVjuE0yxhvcKuXLAS"
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------763DNJAwVjuE0yxhvcKuXLAS
Content-Type: multipart/mixed; boundary="------------pSoFMGVcxXSAxXN16ymH1O2y";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Avinesh Kumar <akumar@suse.de>
Cc: linux-man@vger.kernel.org
Message-ID: <4dde357a-23f9-fc1b-c13b-406f8393a476@kernel.org>
Subject: Re: [PATCH 2/2] inode.7: correct the field name for number of blocks
References: <20230829090335.14051-1-akumar@suse.de>
 <20230829090335.14051-2-akumar@suse.de>
In-Reply-To: <20230829090335.14051-2-akumar@suse.de>

--------------pSoFMGVcxXSAxXN16ymH1O2y
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-08-29 11:03, Avinesh Kumar wrote:
> Signed-off-by: Avinesh Kumar <akumar@suse.de>

Fixes: b48c75727c64 ("inode.7: New page with information about inodes")

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


--------------pSoFMGVcxXSAxXN16ymH1O2y--

--------------763DNJAwVjuE0yxhvcKuXLAS
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTtv1sACgkQnowa+77/
2zJScw//VzmQkGzxqJcGD17W5gC2ChOjIOrJ/jf0/P6FfckReZYCDsiAv4mlboi7
7U6FwC3DWg9Itm2RavGtFFo87YqRPW4uZ/taKpX715t+On7h1HnOEgjvuRS/uSH/
L5Cn611/iVSsaAfA2Z0/f2CcbJMsKc8ulJmC3Hn3clJuLSY+gYdVFuu0jBuLJfVs
fTosV4o74wEWtmOTBK9e49MB9/eQsGddzL0JsI2E+8s4nYw9md5vLvmsRFyubT2F
vlvdHKRnGDx2+krTB7kWBfLFg3Rt0BK2GV6LKkkLEx3OtvUpY79tZzQHd60FBdFd
IeWdEXlSGzYX1XLRIZreghdgSEWpcRTxKcde2guvJ/zM78Ctr/wJwHmaEyK0JCoS
Efw9FNZOJOdXihnSLBcDKqHiamCe1rCk7XMU7+AydMtoiADbrrEbVLjSN6Mb8gts
gye1OA3TkChnrwI9SntMQrwmfeeaf4syKZyEvZ/OnJDhazxi+p9YwILrDHySqjmm
AA+Ojey0GHVQIVbLf21/Fffip0gKZVK4ROv1+g35sPglqadel3ks1eVYNIh5EHM0
47oLbtTGjA5dyIqd1h7nw2ymaVqA5yUAPbobPP/IIDcgsz3tdh/WIpOFYCYzQ2cV
jGY8gEMDu+vrdpMgeGvTA/OJpG6QBisWmKOn8fPo+hqaJvDNals=
=bhhA
-----END PGP SIGNATURE-----

--------------763DNJAwVjuE0yxhvcKuXLAS--

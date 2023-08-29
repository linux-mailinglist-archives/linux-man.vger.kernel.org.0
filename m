Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E339978C1B8
	for <lists+linux-man@lfdr.de>; Tue, 29 Aug 2023 11:47:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229821AbjH2JrA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Aug 2023 05:47:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231509AbjH2Jqc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Aug 2023 05:46:32 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AFDEE1
        for <linux-man@vger.kernel.org>; Tue, 29 Aug 2023 02:46:30 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id E8F5F61382
        for <linux-man@vger.kernel.org>; Tue, 29 Aug 2023 09:46:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6398C433C7;
        Tue, 29 Aug 2023 09:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1693302389;
        bh=lS7fPZr19nt/K6QcW/KdnHTUw2htdzYxwgUbR/+a4h0=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=uHOjHcbsgJGn+f9PjGm8r7kaKpLevyPqHjP4tEvCMr9v+CZbaF+D353AjmiQKM3CV
         QWfQDO+POdBQjx6bhmEIn5VAD26iaa/dZ20SPWtMrzpj9EicDAbhPWx/R2LuegH9AE
         x9eUCVQ4avFVanULEQX3DawDbR5h0sXPZDIUg6jT6q/UJvOYchl+osbFCwxyy9uEN3
         oGQha+q/EwPD5dEepIZobUW7Aanvt+DMhQOtCwl1nfh2fc9FyhXv0AStKqiuhSA53T
         I0HYsoVma+bF3Wkhu7J6w5Lm9wAQch+zdN2aHW8mKT5ZCQnE2ayE6ZdtSCM6ak7/OH
         SaXslcHwWfRwA==
Message-ID: <3a612b2e-bc1b-6415-b407-47d79481027a@kernel.org>
Date:   Tue, 29 Aug 2023 11:46:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH 1/2] inode.7: Remove duplicate field name
Content-Language: en-US
To:     Avinesh Kumar <akumar@suse.de>
Cc:     linux-man@vger.kernel.org
References: <20230829090335.14051-1-akumar@suse.de>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230829090335.14051-1-akumar@suse.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Evocw3hziGQm2gwBdN14wH9T"
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
--------------Evocw3hziGQm2gwBdN14wH9T
Content-Type: multipart/mixed; boundary="------------Ei0nAjT9v2wn97zMMHl0zyVP";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Avinesh Kumar <akumar@suse.de>
Cc: linux-man@vger.kernel.org
Message-ID: <3a612b2e-bc1b-6415-b407-47d79481027a@kernel.org>
Subject: Re: [PATCH 1/2] inode.7: Remove duplicate field name
References: <20230829090335.14051-1-akumar@suse.de>
In-Reply-To: <20230829090335.14051-1-akumar@suse.de>

--------------Ei0nAjT9v2wn97zMMHl0zyVP
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-08-29 11:03, Avinesh Kumar wrote:
> Signed-off-by: Avinesh Kumar <akumar@suse.de>

Fixes: b48c75727c64 ("inode.7: New page with information about inodes")

> ---
>  man7/inode.7 | 1 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/man7/inode.7 b/man7/inode.7
> index 2fc4fde3c..5140fb069 100644
> --- a/man7/inode.7
> +++ b/man7/inode.7
> @@ -56,7 +56,6 @@ Additional links to an existing file are created usin=
g
>  .BR link (2).
>  .TP
>  User ID
> -.I st_uid
>  \fIstat.st_uid\fP; \fIstatx.stx_uid\fP
>  .IP
>  This field records the user ID of the owner of the file.

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------Ei0nAjT9v2wn97zMMHl0zyVP--

--------------Evocw3hziGQm2gwBdN14wH9T
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTtvnMACgkQnowa+77/
2zJlmw//fUuQNEoFU/3LQi8oYewcNoQCt/EIkn69AXD5Z9MEhdmJ9/+9nFN/vxZ4
mjLm88P5hw6Z/xYXMp5QeKakrDzjzaOONvyaqCwnDk085fjBVSWa8llwPIsguOPG
bHCS2quddCGnNTxW7N7Z/0WW9aJiu/7P6zgy7Cuil9CFsuPStAzRBA/Vgs31a+2O
b+VgO0OhMUtHbfAvRylw+xt8vB/TVFDBzddShJgh4fHfCrU/MsPfdNzfvaxVDoyV
nx3kK+rKt/TxooBvmVR/ahfnAUxP1IkQ7Rrw5BQAbhlHZxkdOVlLXQlDbS6bG9hv
4guo9uEdVzmaYOujOKtvla4scK8rl1pugv7jLE6vN8C5V8t+j81QqGKCybx23fJM
6euO+3uB9iiy6Ezl56jmS9rEVAAwUPc/Y+ZBx9cc4oQ6g8YRMh7XK6Pw+UGccY/j
ITbLcit/V6bvLKWbPr7YHL9H0wXJ31ZFi/dmy2yPPWOQWnKik4SSxP5pgA3p5LOV
rF5ukBrIvNk/4B603/T5Gu0Ktb6GPgLfEw3yHsj4oBhNop/I0lOFuzg2u2HYgjkz
eogcWuuPPoWgA9EHYWk9rrfnFJ0Vv8oAEP/2zv6irTG1Vb5XhROfBT8bKJJ+St65
V0UThkttEiZW0szHL8mWMbWBcHplJvSJh/gvQhSy1TRvEWXg5vs=
=zMmx
-----END PGP SIGNATURE-----

--------------Evocw3hziGQm2gwBdN14wH9T--

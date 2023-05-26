Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D358671297C
	for <lists+linux-man@lfdr.de>; Fri, 26 May 2023 17:29:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243918AbjEZP3V (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 May 2023 11:29:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243803AbjEZP3U (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 26 May 2023 11:29:20 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE446FB
        for <linux-man@vger.kernel.org>; Fri, 26 May 2023 08:29:00 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-30959c0dfd6so784681f8f.3
        for <linux-man@vger.kernel.org>; Fri, 26 May 2023 08:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685114939; x=1687706939;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SFzNIVQVNqxDRJQA2etAzTos/CT3Y3qi/I/ei+a+Uro=;
        b=jaOUyvlqOmlLSFGwkFViPxbEQoFtVdkL/AMCtfVzuWDDHKx7/4jJR7cssoHk8Ko2sc
         cZsBER4p8qyUNW/+NJTuVib2crKmQ0GGIdhBTG29SsRyv10aS2sNir2M9Hy+Oiu+mVlR
         2wZRwFP5tzoEyBJAs5/1ES2/tgWuQl+tTHO4huzp3fcFafDjXcV0LqHThCn14t/pXARC
         SlnVRsZkfhgRFAC2ZhC6PTLWrd1Mkr6uVspoe//uNruCvAzvoYo11pMAkqujyxx43qG7
         tKDLqp0+ZZFCMau7EgaAtUX1WlxofqGMrzifMlqUped8wK+uhhhd+AP6xnHjy9zSbJiX
         BRYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685114939; x=1687706939;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SFzNIVQVNqxDRJQA2etAzTos/CT3Y3qi/I/ei+a+Uro=;
        b=GMB/lHCHnozOVojNaeAhV2h3ureSuMdYLJGh0C/cXAG63leavkhbA9V7UYpTnmJtL8
         RlznYXOfc0N5qMRcVCEFu3oSRi1Y9vXaxBulk79hMIJp06KnWY2fJQUt+XPOlTjisftm
         Lvt9NrMwkCbeSZZvMP5U8goFR9hcY4fk8MoeAQKZ7iPEoIDGUg+s8A8zq4gY0KkqNT30
         Zvu7oXxuBXkJQUuodLusTltoab2bZbjHNGmBvGtYYPQ1qCIiS9MsI2qdKK30+5hA1QC+
         o5O8JMeiluwMRbo7aZB/FQA/FQj4Gkve+/ZFODKXn7Q9vasQZJ/rIRuv+n2k9ncVclb7
         MvWA==
X-Gm-Message-State: AC+VfDx1DDZGyK2rgG7stlpqFn/aDXwwxEl5tGyBJNaK5bb61DwCvKx/
        vprUNX/sHJbZ52sbYtyCHP1583boTpA=
X-Google-Smtp-Source: ACHHUZ634VZz1+F6eZx57YJ4ZZXJogbxvyMQMGesOzJP5n2+O4yqV6twYnrweOtPEFRMlGkR+h9WBQ==
X-Received: by 2002:a5d:654a:0:b0:309:51ec:b6e2 with SMTP id z10-20020a5d654a000000b0030951ecb6e2mr1561611wrv.21.1685114939014;
        Fri, 26 May 2023 08:28:59 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id g18-20020a5d5552000000b002e5f6f8fc4fsm5265482wrw.100.2023.05.26.08.28.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 May 2023 08:28:58 -0700 (PDT)
Message-ID: <903e67f1-6304-862b-7d8a-0ff5db965318@gmail.com>
Date:   Fri, 26 May 2023 17:28:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] fgetc.3: Describe handling of ungetc(EOF, stream)
Content-Language: en-US
To:     Ian Abbott <abbotti@mev.co.uk>, Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
References: <20230526151941.25428-1-abbotti@mev.co.uk>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230526151941.25428-1-abbotti@mev.co.uk>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------n5JCgC3TNXjweAZ1XIWNC07i"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------n5JCgC3TNXjweAZ1XIWNC07i
Content-Type: multipart/mixed; boundary="------------U8MnXUBxvr509rYHUCO0FI28";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Ian Abbott <abbotti@mev.co.uk>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Message-ID: <903e67f1-6304-862b-7d8a-0ff5db965318@gmail.com>
Subject: Re: [PATCH] fgetc.3: Describe handling of ungetc(EOF, stream)
References: <20230526151941.25428-1-abbotti@mev.co.uk>
In-Reply-To: <20230526151941.25428-1-abbotti@mev.co.uk>

--------------U8MnXUBxvr509rYHUCO0FI28
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Ian!

On 5/26/23 17:19, Ian Abbott wrote:
> As per the C standard, calling ungetc() with the character parameter
> equal to EOF causes it to fail, returning EOF.
>=20
> Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
> ---
>  man3/fgetc.3 | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>=20
> diff --git a/man3/fgetc.3 b/man3/fgetc.3
> index 75dcaeaf6..d6bf62327 100644
> --- a/man3/fgetc.3
> +++ b/man3/fgetc.3
> @@ -62,7 +62,13 @@ A terminating null byte (\[aq]\e0\[aq])
>  is stored after the last character in the buffer.
>  .PP
>  .BR ungetc ()
> -pushes
> +returns
> +.B EOF
> +if the value of
> +.I c
> +equals that of the macro
> +.BR EOF ,
> +otherwise it pushes

I would put that detail at the end of the description, rather than
the beginning.  In C code, that kind of short-cutting can help
reading, but in the manual, it's better left as a detail at the end
of it, to give it less importance.

Cheers,
Alex

>  .I c
>  back to
>  .IR stream ,

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------U8MnXUBxvr509rYHUCO0FI28--

--------------n5JCgC3TNXjweAZ1XIWNC07i
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRw0DMACgkQnowa+77/
2zIU5RAAhwanIeB1muIMmParl03ObzsPCztataxE3RwdvgjUPPQc1cG3IR4K81+L
A330Z1luW6IWEdGF56daqZ3nNFoW+csJQlz/h4Iu5GjnqNuwx1RMtlDycgkXxpg0
ikrFOGT0Fhq4P4ub85yUblKNfRWK5AF/du+1RE+OOWNUDehC6CZKvHWkb8M+UHFX
Cc0P1rgZNmk+aTjfi1KtL8yAiwcSP7ExvREw3aI7FNRYh7XjNmzB1nLloc7vVodY
Oe20UrPVD+eIVriPaPcHUXQ8FXcgmid/TX/Dg2aE8yGAKZDPsauT7IQ0+Tx8PmhY
22TJPphIQhZQg1QTwsh7GXyHalAYAaKgD4MgPnf48Y1/diyj4LV+dGdeGV2C0r0u
pO8SGe0m+JV4TJnSjuEJs8btzjtJZf9CxkSB8/CVcSUeHETIiDJS6NxWZcFwXMse
TgO3VRTo0N+OTXwLLnTwU2MGjJOPu1ojH/GxekpIvZo6869pXFELNbOsXjTmliyN
r+j4/eCBCm2zPOPApDNkEjzXu0Ozm+bBvko8DSyRm5OEKX41wU8gslcnu7ikQmQB
sX+v6mkRPetToMA/NyF6RjPplymp9cL4sT5RqRO0ZFTDE3DYaiymtLUF2EG01rUI
goM9/3VDVE+FPkt5jRB4EhKO6NtXsY+7TDVWHWKFodEkAk83J2E=
=5FNG
-----END PGP SIGNATURE-----

--------------n5JCgC3TNXjweAZ1XIWNC07i--

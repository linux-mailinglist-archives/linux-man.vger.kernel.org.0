Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C8F226E8223
	for <lists+linux-man@lfdr.de>; Wed, 19 Apr 2023 21:51:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229878AbjDSTvR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Apr 2023 15:51:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229619AbjDSTvQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Apr 2023 15:51:16 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59D4B30EA
        for <linux-man@vger.kernel.org>; Wed, 19 Apr 2023 12:51:13 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-2f40b891420so59264f8f.0
        for <linux-man@vger.kernel.org>; Wed, 19 Apr 2023 12:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681933872; x=1684525872;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yl/jITY3OfOaOWYBA9Ug7T3RYckKnFy9mvlyiR1j2Q0=;
        b=rq48QyqxgFgCdgMD22XtYZ9h5+UjLY7m/5bEv7oB8ICI06EwZVqRtYmWtvmvkz6iVv
         jPAuIJ0oVrspdLXg/LhocsgRpOty0bmBD4Ryq2u/M7lDEhR2h3sD9TrvTs/hI6JkKUJW
         7yOSW+1SrEXhUDbFgBAi9PujQgFqUUBt2pCdGHmyyGEPtKbzhJsdQQRATdSXuoJYdGjJ
         Mti3fzARv/poJpZTwZn4IRkNtPxlYFTlukN8Bn+PeRDFAJ7XCKvHzB30pmm5Gmf9DEm8
         MeKMOsRDnswju0oRZ7CrOSST8QSZPPwKhC2OOjOIUGzoIkiHVWHzf5hXijyTyyrlR5sL
         udrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681933872; x=1684525872;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yl/jITY3OfOaOWYBA9Ug7T3RYckKnFy9mvlyiR1j2Q0=;
        b=QEtWmgsLIxTr0HDVxtQksu4dofiOXLlkFy6zhdjukFC7Y9RWhAi/TcGQtmje7Y20P4
         W1VKO9p081FgSv9TphBzAhwxSGJW0j1Jy6ur+jxDxC2NWPtL6Gesb9O13okewQJDkNI5
         qTVtP58Emg8fH1uT2v9KzQgSeUTb849qN2ijrKbYQeys/in/oKm18ECiCqy/5SNnRogJ
         kll8czjE5GAIQEHlltsId5FOcMn2kBkms/eiR0WN+hlJvY2h1B0e7gqHtXjhvpIgbtPQ
         D5nI4vrRHNH09W7+PNdB6dUm05IdsfZ9xBqIXwq0T/74NvOP/aO5/heqBK3+B+RFy4yH
         kjjw==
X-Gm-Message-State: AAQBX9dQZ66s2BdcSnbCbOtOriGvC3RAWeLmqi5W+GVlO6nHedd3m8rR
        oN9qeGii16wAlEFvlVuAHgQQXZWM6Sg=
X-Google-Smtp-Source: AKy350aHW5SLvi00s/di51ujcp0DEUEWtlc3SSYER+WxZh45nTeygXbjNIvSxADCDcGbIa+FOoOIJw==
X-Received: by 2002:adf:e8c4:0:b0:2ef:b123:46d9 with SMTP id k4-20020adfe8c4000000b002efb12346d9mr5652970wrn.3.1681933871661;
        Wed, 19 Apr 2023 12:51:11 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id z14-20020adff1ce000000b002f28de9f73bsm16517326wro.55.2023.04.19.12.51.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Apr 2023 12:51:11 -0700 (PDT)
Message-ID: <09bda4f5-ab6f-a369-ad36-0779dc3749b4@gmail.com>
Date:   Wed, 19 Apr 2023 21:51:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 1/2] regex.3: note that pmatch is still used if REG_NOSUB
 if REG_STARTEND
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <15d73d2add2adf0fbc33fd6697a6b29d126c11b9.1681926298.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <15d73d2add2adf0fbc33fd6697a6b29d126c11b9.1681926298.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------wwXJTJk4RstJKwDMzpyTUH0V"
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------wwXJTJk4RstJKwDMzpyTUH0V
Content-Type: multipart/mixed; boundary="------------Br1onN3j7dgWVcrGQmc10m25";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <09bda4f5-ab6f-a369-ad36-0779dc3749b4@gmail.com>
Subject: Re: [PATCH 1/2] regex.3: note that pmatch is still used if REG_NOSUB
 if REG_STARTEND
References: <15d73d2add2adf0fbc33fd6697a6b29d126c11b9.1681926298.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <15d73d2add2adf0fbc33fd6697a6b29d126c11b9.1681926298.git.nabijaczleweli@nabijaczleweli.xyz>

--------------Br1onN3j7dgWVcrGQmc10m25
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi =D0=BD=D0=B0=D0=B1!

On 4/19/23 19:47, =D0=BD=D0=B0=D0=B1 wrote:
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> ---
> Also note that in
>        int regexec(const regex_t *restrict preg, const char *restrict s=
tring,
>                    size_t nmatch, regmatch_t pmatch[restrict .nmatch],
>                    int eflags);
> pmatch is [1] if nmatch is 0 if eflags&REG_STARTEND.
> Or, more succinctly,
>   regmatch_t pmatch[restrict !!(.eflags & &REG_STARTEND) ?: .nmatch],
>=20
> Doesn't really matter, and that's a much worse signature than what's
> currently there, but.

Please include this in the commit message :)

>=20
>  man3/regex.3 | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/man3/regex.3 b/man3/regex.3
> index e8fed5147..d54d6024c 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -82,7 +82,9 @@ and
>  .I pmatch
>  arguments to
>  .BR regexec ()
> -are ignored if the pattern buffer supplied was compiled with this flag=
 set.
> +are only used for
> +.B REG_STARTEND
> +if the pattern buffer supplied was compiled with this flag set.

I think it would be clearer with a wording like:

+are only used for
+.B REG_STARTEND
+and only if the pattern buffer supplied was compiled with this flag set.=


I'm still not convinced by my wording either; please revise.
But with your wording, I think it's not clear what happens if
REG_STARTEND is not set.

Cheers,
Alex

>  .TP
>  .B REG_NEWLINE
>  Match-any-character operators don't match a newline.

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------Br1onN3j7dgWVcrGQmc10m25--

--------------wwXJTJk4RstJKwDMzpyTUH0V
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRARi0ACgkQnowa+77/
2zKkZA/9EK4o39BW0m31CjScYhXDI5xhe8Zhrs+WNSk0+jnjjByCXZLL2JcPuHO7
tnyCSww5NkRmkl/qIxMmvepPi+r53aU1GROIOQz+0cgKRGZeJDvi0DVFPZW+yn+t
M9MJqi1FPJxAIAKNoC6jLZZ8DCHCgvbTAlHOW3TctEWHjxwRZcRghwLgd+almBD4
G3B/CNkC8h80WrESIWxarbo+7eU0ByimgI9YOy7t5egLh0+uLC60g+gakMLJWUDa
UFWcCrKXm0BrssjP7DRDBs84ZSr32ppmA2+EAmx9iBNeYH+sMbB6MSBRdUEfejnr
1DuFHQgqBu0ThOVyR2b7lS86a6hYsclS+Geulqz+x1Jo0RV+zP3TZYU9eYJsrD8O
j1JCYs9IOimt1SGZvpG+N08dD97MzOF3UiD9Xbc6ATaKGWlTUzAMU/BJZZ1azJOI
TGVCHtBbZwdJ9KLkNLdC1q8XEFUaSSUMtICt359kQ4dcoI5veY5cj0QBILMZeqVf
gB4fbdY9gLNZ171fbVxzB+fwskYcCuAsgSlNFePpAeMpS1Djm4m+vNlw2r9ulVPy
pXqjYAKMZMwqJBDmdUlL2QE0zM83YYbZmlDkPU6eVAiBSHB9vIAPaDf4adeRW8+3
9jllV4g77YWHddNVN61xGWOLFBbpDMyd9OKUMzbeHrssbrXTIX4=
=a2b8
-----END PGP SIGNATURE-----

--------------wwXJTJk4RstJKwDMzpyTUH0V--

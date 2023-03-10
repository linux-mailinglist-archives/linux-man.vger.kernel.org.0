Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 812736B4079
	for <lists+linux-man@lfdr.de>; Fri, 10 Mar 2023 14:32:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229577AbjCJNcM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Mar 2023 08:32:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229613AbjCJNcK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Mar 2023 08:32:10 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F84A1009DA
        for <linux-man@vger.kernel.org>; Fri, 10 Mar 2023 05:32:09 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id f11so5027830wrv.8
        for <linux-man@vger.kernel.org>; Fri, 10 Mar 2023 05:32:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678455128;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wrrYKzybC75eKJI3DwzuNYlru1EbcJl6ksgow5wNn2c=;
        b=cvvK/bTuFeEgwSWAuWotHDZxO+dlC5NRI1aJxMBfyNdshUAT/NubEEK7j376CXwbHc
         1m/FQvtUbCbY7XbQwSS0NUX/5eFXAvPtQZIfbG4/a8cVzC3AWm0LUt4wp058zMpJeH5r
         0ic4q+Hk1r3miyiirPgfp2YnBHZQXEuKRaz4wFD+ctaX3pxQ0ERn8a8ZVFRhqLDnPLGn
         91Lw+J8lkeItiON2eJKm+YYtMD1cyhXj2X/dhMpLvmP4Ug7ILgJXSQatXx8R6B0rD3M2
         F+KtmGsqTvd0Zt4/GCqoOeoSbr5MgowZVO7btLG1Q7zyivOgVlkM3pW/KUgfegXvJDTN
         7xlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678455128;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wrrYKzybC75eKJI3DwzuNYlru1EbcJl6ksgow5wNn2c=;
        b=n93vzo5YzZnF5OHk4meq/Rz7D8s1SFRosMbAhkxiKtPePftoigFLxY6+dLwEZzdqY+
         hcjgYytUeBfyk+ek8OTcal8nfK4pDW2Ccpve3RynBzL0Iw1It+WrCiCACcVtkJDNj3d6
         V0RStQPnMzUwvSF+YAidsPbc+M0LHlxhnBrbLnxfCkGGxBfCH2sWoffaBCMRIVYO3/7A
         UXMZrSiTkGK9ps6cMD/a4QWiZS58RAK9R7WXePwC1ENFTnwuXtZGI4uJqBzKzyxAKtlQ
         XxP4FZqaL3RdvCqmRQUUYjFkKamlmuAj58hx6BL+XtJKFcBvJsd+hacQT0c1hWWDnUeh
         a5xg==
X-Gm-Message-State: AO0yUKXAdmQUJQtnK+bjclmyM4NL4D8U/qaLQimaO/bNJLGlvtJIeF68
        wp/2tl58WAexRtB6IlEe/UE=
X-Google-Smtp-Source: AK7set8BhACm73zr0bOzjY+F9Kfbm2U6rz+L5LS7CFBJrG5ie/XI0B7l2UDTIicOHBnEhITvkXY4Gg==
X-Received: by 2002:adf:eecf:0:b0:2c9:8cd:55a with SMTP id a15-20020adfeecf000000b002c908cd055amr15779575wrp.15.1678455127762;
        Fri, 10 Mar 2023 05:32:07 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id m1-20020a7bce01000000b003e91b9a92c9sm2163684wmc.24.2023.03.10.05.32.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Mar 2023 05:32:07 -0800 (PST)
Message-ID: <cec99d15-0483-630c-dd65-8983239888fc@gmail.com>
Date:   Fri, 10 Mar 2023 14:32:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Revert "Many Pages: Remove references to C89"
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Oskari Pirhonen <xxc3ncoredxx@gmail.com>,
        Matt Jolly <Matt.Jolly@footclan.ninja>,
        linux-man@vger.kernel.org
Cc:     Brian Inglis <Brian.Inglis@Shaw.ca>
References: <20230310015150.3545768-1-Matt.Jolly@footclan.ninja>
 <8899aff7-4193-dd54-4488-234b1a6cee83@gmail.com> <ZAq5gg+aQB5TrDQ3@dj3ntoo>
 <f5aac742-4417-fced-343d-002117d629f1@gmail.com>
In-Reply-To: <f5aac742-4417-fced-343d-002117d629f1@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------4uf2poGFbYQMAkwzZodZkdG4"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------4uf2poGFbYQMAkwzZodZkdG4
Content-Type: multipart/mixed; boundary="------------SkzuDgwbWqTBLJ3Sm4mmPCG0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Oskari Pirhonen <xxc3ncoredxx@gmail.com>,
 Matt Jolly <Matt.Jolly@footclan.ninja>, linux-man@vger.kernel.org
Cc: Brian Inglis <Brian.Inglis@Shaw.ca>
Message-ID: <cec99d15-0483-630c-dd65-8983239888fc@gmail.com>
Subject: Re: Revert "Many Pages: Remove references to C89"
References: <20230310015150.3545768-1-Matt.Jolly@footclan.ninja>
 <8899aff7-4193-dd54-4488-234b1a6cee83@gmail.com> <ZAq5gg+aQB5TrDQ3@dj3ntoo>
 <f5aac742-4417-fced-343d-002117d629f1@gmail.com>
In-Reply-To: <f5aac742-4417-fced-343d-002117d629f1@gmail.com>

--------------SkzuDgwbWqTBLJ3Sm4mmPCG0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 3/10/23 14:29, Alejandro Colomar wrote:
> Hi Oskari,
>=20
> [reordered your sentences for my reply]
>=20
> On 3/10/23 06:00, Oskari Pirhonen wrote:
>> Hi,
>>
>> On Fri, Mar 10, 2023 at 03:22:12 +0100, Alejandro Colomar wrote:
>=20
> [...]
>=20
>>> The main problem was that the existing info about C89 was not consist=
ent.
>>> Some pages declared APIs being standard since C89, while others didn'=
t.
>>> Incorrect info isn't much better than no info.
>>>
>>
>> This is something that can (and should) be fixed then, instead of
>> blindly dropping all references to C89, no?
>=20
> We decided back in 2020 that it wasn't worth the extra effort to
> check C89.

I forgot to add a link here.

<https://lore.kernel.org/linux-man/23bfb4c9-9cab-8d1f-46a2-00932501b5b8@g=
mail.com/>

>=20
> [...]
>=20
>>> I'd like to really understand the need for C89 in 2023.
>>>
>>
>> Some projects might like C89 and there's not much that can be done on
>> that front without the maintainers having a change of heart...
>>
>> What is not fine, on
>> the other hand, is saying that it's in C99 and POSIX.1-2001 but giving=

>> the impression that it's all of a sudden _not_ in C89 anymore.
>>
>> The STANDARDS section should not be the place for opinions,
>> rather facts about when something was standardized. If this is not the=

>> case then perhaps it should be renamed to something else. "STANDARDS
>> EXCEPT ONES WE DON'T LIKE" comes to mind.
>>
>=20
> But there are many standard.  Who decides which to mention and which
> not to mention?  How about POSIX.1=E2=80=901988, POSIX.1=E2=80=901990, =
and
> POSIX.1=E2=80=901996?
>=20
> There are still projects out there that care about POSIX.1=E2=80=901996=
, and
> that's not compelling enough for me to do the extra work of searching
> if something happens to be supported by it.  I will just state
> POSIX.1-2001, which is the oldest one I care about, and live with it.
>=20
> In fact, some pages documented POSIX.1=E2=80=901996, and I removed any =
mentions
> to it in the same commit that removed mentions to C89, and even forgot
> to mention it in the commit message.
>=20
>=20
>>> I'd like to really understand the need for C89 in 2023.
>>>
>>
>> Some projects might like C89 and there's not much that can be done on
>> that front without the maintainers having a change of heart...
>=20
> If you really want C89, I suggest (as I did in the commit message) that=

> you read the C89 Standard itself, which will be much more precise than
> the Linux man-pages have ever been or will ever be.
>=20
> However, I suggest you change your heart, and consider C99, since that'=
s
> the future (or the past, I should say).  I would at least ask that you
> show _proof_ that you _need_ C89, before I consider spending some extra=

> time in documenting C89 in the man pages.
>=20
> Especially, when you can just download a plain text version of the C89
> Standard, and grep(1) for the function name you're interested in:
>=20
> <https://port70.net/~nsz/c/c89/c89-draft.txt>
>=20
> I suggest you download that file, and use a function like this:
>=20
> $ stdc89() { grep "[[:alpha:]] \**\b$1([[:alnum:]*,. ]*);" /path/to/c89=
-draft.txt; }
> $ stdc89 printf
>          int printf(const char *format, ...);
>          int printf(const char *format, ...);
>=20
>=20
>>
>> Personally, I see this more as an issue of manpages inappropriately
>> editorializing. Mentioning in DESCRIPTION of gets(3) to "Never use thi=
s
>> function" is perfectly fine. In fact, I applaud that it's emphasized
>> before even getting into what the function does.
>>
>> From the original commit message:
>>
>>> Let's move forward, so readers get the intended notice that C89 is no=
t a
>>> useful version of C.
>>
>> This is incorrect. I can write useful code, even in C89.
>>
>> More importantly, I find it to be an inappropriate attitude for a manu=
al
>> to take.
>=20
> I admit some editorializing.  I think there needs to be some.  Otherwis=
e,
> there will always be some projects that request support for their
> favorite standard.  We're close to the point where C89 becomes irreleva=
nt.
> I admit we're not yet there, but I'm not sure if it's because it's real=
ly
> needed, or because some projects blindly stuck to it for fear of the
> unknown.  I believe it's the latter, and would like to ask you to try C=
99,
> or show some proof that you still need C89 for some reasons that are
> different from "I like it".  Please understand that I'm not going to
> spend my time on documenting POSIX.1-1988 or even K&R C just because
> some project likes it (there are still projects that use K&R functions)=
=2E
>=20
> However, if you show me that some system can't possibly have C99 in any=

> form, because there's no C99-compatible compiler or libc that runs on
> that system, I would reconsider reverting the patch.
>=20
> Cheers,
>=20
> Alex
>=20
>>
>> - Oskari
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------SkzuDgwbWqTBLJ3Sm4mmPCG0--

--------------4uf2poGFbYQMAkwzZodZkdG4
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQLMVYACgkQnowa+77/
2zJSww/9EBBQrNAkBTkxgpvSzG67lWFau4UYE2rLRvpsVPS0AKxP6odemTZoq6si
2fT/muCyqTw1quCMa7pM7u3Y1BiSOdq6BK8mzm2TYexF2INHPno/dpDBlg7Rla1J
dbgFZGfE+YNG4pK9S4Kb9TIS2SdyzqmJWSaLCFuldxdJ/QQSBABwyW7R5MNL1N11
E5JvxPNsJA1MS3CnHNxnSztSuCUabqTix9Nla1QYOs29REaIq457KtgztgDftNiA
x0BQWaga+dPtXW8b3KdvfP2WeC+0I8Sw+CP9vgssxUzV2zs2YYvNglg50EJ8CA5h
szcqL9fG3Aiq6iCNZXpwljfWu0OqI6Sc8bXjXJ//6IFLK4Sf3OPaP83flxyEbESq
ijbHtzdrLu4pL9hBvHF9VkU3ceEYH7NnncLPppyI4CHF8KoeOmEvASCeRd+yY+gS
xV73aqm2yfAqstJ2zsFOyzpWvR9zVT+aEF1W9mAjkMhq3EWqac7C20xrCIYXYcKN
LO0mqs9GCaax2oj7e2jmeZO3h4ORI/2/GQmDClVUAaakRtFw0cuwETRA47EGALKg
2UNXF/ed8ZDdrazC1MNPXnKAtAd2qq0p0+XXrzmbbaN0n53l1NBzlFluUKJHCe3h
T9VkNuLr8uF7KuoCkMKQkOFc7TZ2xU1GnNJKQvGqf6zYrhp59h4=
=rEF5
-----END PGP SIGNATURE-----

--------------4uf2poGFbYQMAkwzZodZkdG4--

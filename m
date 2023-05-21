Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B4B5A70B06C
	for <lists+linux-man@lfdr.de>; Sun, 21 May 2023 22:57:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230119AbjEUU5x (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 21 May 2023 16:57:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229528AbjEUU5w (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 21 May 2023 16:57:52 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A68CDD
        for <linux-man@vger.kernel.org>; Sun, 21 May 2023 13:57:51 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-30a4ebbda56so1249083f8f.1
        for <linux-man@vger.kernel.org>; Sun, 21 May 2023 13:57:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684702670; x=1687294670;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pg+C95ti6+U26odC4p8ci1v88/WHO3g7U5AzUe8LdRo=;
        b=EpfY6N/AkCo56shQRw+s04H9N8TEKBNurL0Otch6tcP2gebwgygDmDZiXe9miNzUJM
         V5jYUVIWHk/uG1BxA86Gz+TX/3/Wy6J+GsMsDBnDsH0l/aHfgJeqTAP0lU69lbdttUsN
         NHcRi8LwKSG7EShMlzIsxP51TDCuHGN01NFdVPqDBFEzsfyPvKsPvkVrCe/K3JM3V1UN
         I6gGJljvuZXYRdQWKkGYb39iugVFFZKsuDz1drb0bI1cvNMklf/VRbtsh5X/yRVBp+yi
         evrs744Gl8O4B4wXIolng7dRm2uFvS8COLQAUnEkZxeTygTZh0t5zKIloe+j+n/PRxSR
         oGcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684702670; x=1687294670;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Pg+C95ti6+U26odC4p8ci1v88/WHO3g7U5AzUe8LdRo=;
        b=TKLTkWezP59EnVjsjt7ppAscLPpQoJfCgtjHJigPjtZaC5uMAIkDgz4zMkuMxfelHO
         Uj0eSVwt+rZysEtWEHKKj+7f5B/4jQNBME7EzLLr0tSUqu4zT6NUQAL2Ebri7BppLh29
         0wlD+N+tXOpwGbh0SWcrnarAz0PtAsiKVOuhv4Ne58JcVDUWT8ElHs+Y29Rkh3aHYWre
         WT4MFMHpYmUS4QQVw6tAySVXrcyJiPWsbJxNEemgAj/8Ok8MsBlC7+HHVQqxh5lja87o
         3mhoo+Tx/ltgbfEMIaNO9eyJgglzJFOXIU8+9cx2CA+NKPV5mTNSaq5ewVB0ZaI/L1C+
         Kd/g==
X-Gm-Message-State: AC+VfDzQzRhVCdoW6Anft0fRxY9FScavkAFphZTlCwa+gumchZLlOfBY
        Va1xqEzoY1LCGgkfj9LnkIA=
X-Google-Smtp-Source: ACHHUZ5bPGDJM+gfVUb9URwr/xyhFBBF5ThdXtfd5mgwXzRC0rK9vHmKGA6FwCHKT62Fdfv4RkFhbg==
X-Received: by 2002:adf:edc4:0:b0:309:3e48:f400 with SMTP id v4-20020adfedc4000000b003093e48f400mr6584783wro.18.1684702669625;
        Sun, 21 May 2023 13:57:49 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id p4-20020a05600c358400b003f1738d0d13sm22519053wmq.1.2023.05.21.13.57.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 May 2023 13:57:49 -0700 (PDT)
Message-ID: <14c14d88-be1d-94f9-8a1c-3a1128eec9f2@gmail.com>
Date:   Sun, 21 May 2023 22:57:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] iconv.3: Clarify the behavior when input is
 untranslatable
Content-Language: en-US
To:     Bruno Haible <bruno@clisp.org>
Cc:     linux-man@vger.kernel.org, Reuben Thomas <rrt@sc3d.org>,
        Steffen Nurpmeso <steffen@sdaoden.eu>,
        Martin Sebor <msebor@redhat.com>,
        Alejandro Colomar <alx@kernel.org>
References: <20230521103128.8472-1-alx@kernel.org> <18117042.sWSEgdgrri@nimes>
 <5d2a1776-66fc-4a76-a28e-31c613d3af3a@gmail.com> <2906989.o0KrE1Onz3@nimes>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <2906989.o0KrE1Onz3@nimes>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------9Ytv7wjqtRvypzb0PXFsAE0k"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------9Ytv7wjqtRvypzb0PXFsAE0k
Content-Type: multipart/mixed; boundary="------------aKjLStUGfLYywgaOukPsAVvN";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Bruno Haible <bruno@clisp.org>
Cc: linux-man@vger.kernel.org, Reuben Thomas <rrt@sc3d.org>,
 Steffen Nurpmeso <steffen@sdaoden.eu>, Martin Sebor <msebor@redhat.com>,
 Alejandro Colomar <alx@kernel.org>
Message-ID: <14c14d88-be1d-94f9-8a1c-3a1128eec9f2@gmail.com>
Subject: Re: [PATCH] iconv.3: Clarify the behavior when input is
 untranslatable
References: <20230521103128.8472-1-alx@kernel.org> <18117042.sWSEgdgrri@nimes>
 <5d2a1776-66fc-4a76-a28e-31c613d3af3a@gmail.com> <2906989.o0KrE1Onz3@nimes>
In-Reply-To: <2906989.o0KrE1Onz3@nimes>

--------------aKjLStUGfLYywgaOukPsAVvN
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Bruno,

On 5/21/23 21:37, Bruno Haible wrote:
> Hi Alejandro,
>=20
>> Please use semantic newlines.  See man-pages(7):
>=20
> Thanks for explaining. I wondered whether I should use one space or two=
 spaces
> after the end of a sentence, but found no precedent for either style. T=
his
> explains it :)
>=20
>>> +In the GNU C library and GNU libiconv, if
>>> +.I cd
>>> +was created without the suffix
>>> +.B //TRANSLIT
>>> +or
>>> +.BR //IGNORE ,
>>> +the conversion is strict: lossy conversions produce this condition.
>>> +If the suffix
>>> +.B //TRANSLIT
>>> +was specified, transliteration can avoid this condition in some case=
s.
>>
>> What do you mean by "can" and "some cases"?
>=20
> GNU libc and GNU libiconv support transliteration, for example, of "=C2=
=BD" to "1/2",
> or of "=C3=A5" to "aa" in a Danish locale. Here I want to give a hint a=
t the
> transliteration facility, but without going into too much detail.
> "transliteration can avoid this condition if there is a transliteration=
 rule
> for the multibyte character and it fits the character encoding of the o=
utput"
> is too detailed, IMO.
> Do you have a better wording than "can ... in some cases"?

If you include the full version in the commit log, to be able to
understand it in the future, I'm fine with it.

>=20
>> I recommend either using \[aq]*\[aq] for producing valid C code,
>> or just having an unquoted *.
>=20
> I made the requested style changes.

Thanks,
Alex

>=20
> New patch is attached.
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------aKjLStUGfLYywgaOukPsAVvN--

--------------9Ytv7wjqtRvypzb0PXFsAE0k
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRqhcsACgkQnowa+77/
2zJiYg//TueqILVZEhNmh9msDnfNzD8TY/C2UZB9pU2KFvvVyi7MKiImncNLzVLA
mOX2vFkeBpikprBwjbp3wQNndctKBX4tDxwo4R7udvuYcMDm19++TDVhUMPs+WUE
zXIDid1HfJ6we3vrvWfUf781TPBWb0wz/Twgwv3z6zmfPEpVzK/dZxtLT6y4nZrc
aYQI6AVtyE6mo5jyZfPYSbH4eWekUeqWzbJG+/xnKkqZo0/NzmuiT0uaVGCIfaGz
cMTBZ4tz0UGUrmqKrvZGxm7yp9doxJ+ZWjnA9dEYHZGorOsCCH+hMSgTJsCPFnQr
ZsafjGnzq/WyH1WM7FjlVcC/O2atgRCvKbCoFSvn+2Mo73rjuG8aK4AHT2hGzSv9
G4ptZN1nq3YbB6A3U6tVFqGfXsqh+dOpFQdFQ+jSi1UH9SAABN7O0D1SMPaoPP1q
TyoKe53KRGFSZPGykVIvHylHc2D8eg/MCxorUl6LG1R9qwUqT+yLiBOdVGEJDuLh
2oSN9ElXb0Lnvmth/jTx+ndnZosOiKxgIV7VMy1qgIiCtVoPFw0cJTL1KAwlkrce
nugVy9GKy7RskAOY8KUSmzQQtpQSuNSLjXISWUKwTedCCgWXxaYCKRfZUxfUHHGG
fMBzxWeaRGAUWLAe0A1fmk+L/HEZDtnmV241iAM8tUVRCjUiY4o=
=0liM
-----END PGP SIGNATURE-----

--------------9Ytv7wjqtRvypzb0PXFsAE0k--

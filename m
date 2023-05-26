Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE2EF71304C
	for <lists+linux-man@lfdr.de>; Sat, 27 May 2023 01:17:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229985AbjEZXR3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 May 2023 19:17:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53598 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229502AbjEZXR2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 26 May 2023 19:17:28 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B7E713A
        for <linux-man@vger.kernel.org>; Fri, 26 May 2023 16:17:26 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-3f6e13940daso13686135e9.0
        for <linux-man@vger.kernel.org>; Fri, 26 May 2023 16:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685143045; x=1687735045;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OQpT5H4o5RDxJBQpEjjurhqzu8StEq3zSVEl7JvoxrQ=;
        b=igegRIBHCwhVjDAAsKqfrPq46LvFxs4BAmXG/t2Lum57R/1ts/PzATj/ZQ1l8E8I0x
         Na2AjbOMOhv9rX4SaE8Fel9NJ2VpB9Achk+Ey+vSu+ithtol2DccoSij3xWaC4LiHcIJ
         LQ4cUe+JKbsUAn0YCiIGKYPKHxWssIIdOA6+qzbesWO+40SFXplihdg90eSjb5eyCSkM
         a/u+h7uTP98kwm3B/c/z93kCutmatsVvqb8i/pz7fF/QEduzG2tHXtEah/kZOGzj7mfD
         QG1SJ+ewhldyyXMMBLMPndFsp/EVgxas/H01Na5kuD8YYY20pwdPDLYOkBhwgPFgV/dP
         bGew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685143045; x=1687735045;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OQpT5H4o5RDxJBQpEjjurhqzu8StEq3zSVEl7JvoxrQ=;
        b=HD7l3J5fuuMrkmTutp0Cr7IHa6m2+yBd8Ffq9C8FytyZKtw6KpquYR1LLMgfYsdywT
         EKRJsQ/bkkdwh6MXUnLv3t+NuOxmLTKNPtFV1kh+nYVQI8B1Gwftp0FFQI05JYv5+Can
         gNg/yj7cCHjgDJ1BwJICsz0D8pUQBxfsanzdSsvgqc/pJCOv/fqPZ+DlKMzAC9zKG1aG
         bb/0+2tprRjVp5iSjXeVSaP6xbM/8X6ysExRfpVLDJi60x0SMmI7deVcXBEQL4/clwJt
         R0jH0l1f76fz7Ln3pasZTtTyEzDUnm358VB6V4NgnG+3Ipll01MHD0hk3/s4YiZfgw6h
         7Xbw==
X-Gm-Message-State: AC+VfDyhHW7NgalVIE9Q1yu2KiJoKT2/3mAiQdD8Q0JZ1kmKpa98JdD9
        JTjGsA9Gkqjz46IP8HDltu4=
X-Google-Smtp-Source: ACHHUZ5g+n0QlAnwJMoREKDvp2bdwQeUOhSHEH6oTd97gpCdt1JU0ZZCh/m/Hwt6W4/qqN4rmL5c+A==
X-Received: by 2002:a05:600c:21d9:b0:3f5:d0b8:4a53 with SMTP id x25-20020a05600c21d900b003f5d0b84a53mr2925131wmj.34.1685143044651;
        Fri, 26 May 2023 16:17:24 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id n14-20020adff08e000000b002e61e002943sm6303894wro.116.2023.05.26.16.17.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 May 2023 16:17:24 -0700 (PDT)
Message-ID: <c47f6b09-6549-585f-1018-39b7f0759bc4@gmail.com>
Date:   Sat, 27 May 2023 01:17:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: SPDX license review requests
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <CADeQ=2-ZsaSCEPfTHUO6AAZ_+H8ob4LJ5x5MuGaX=jdOVpdCog@mail.gmail.com>
 <bd1a81d0-456a-bc19-7df0-fdbcc2a51395@gmail.com>
 <20230526131503.vvejwh3cgsrobgl3@illithid>
 <cde812f7-1220-6918-3ae8-22bdb2a4e625@gmail.com>
 <20230526143730.mg3bhbwxj4ohidvy@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230526143730.mg3bhbwxj4ohidvy@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ean8XYLCjStWnIsLzJPQmVb1"
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
--------------ean8XYLCjStWnIsLzJPQmVb1
Content-Type: multipart/mixed; boundary="------------RP7abT9Dz6NqD0iPfo3SnnUo";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <c47f6b09-6549-585f-1018-39b7f0759bc4@gmail.com>
Subject: Re: SPDX license review requests
References: <CADeQ=2-ZsaSCEPfTHUO6AAZ_+H8ob4LJ5x5MuGaX=jdOVpdCog@mail.gmail.com>
 <bd1a81d0-456a-bc19-7df0-fdbcc2a51395@gmail.com>
 <20230526131503.vvejwh3cgsrobgl3@illithid>
 <cde812f7-1220-6918-3ae8-22bdb2a4e625@gmail.com>
 <20230526143730.mg3bhbwxj4ohidvy@illithid>
In-Reply-To: <20230526143730.mg3bhbwxj4ohidvy@illithid>

--------------RP7abT9Dz6NqD0iPfo3SnnUo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 5/26/23 16:37, G. Branden Robinson wrote:
> At 2023-05-26T16:10:47+0200, Alejandro Colomar wrote:
>> On 5/26/23 15:15, G. Branden Robinson wrote:
>>> I suggest taking a few days to shake out some points (it's going to
>>> be a holiday weekend in the U.S.  anyway, so some engineers may
>>> already be on PTO), and then re-announce the relicensing effort
>>> subsequently.
>>
>> I'll go on trip around Europe for a couple of weeks starting this
>> weekend, so I'll be relatively quiet for some time.  :)
>=20
> I'm sure you can guess what I hope is released by the time you return.

I won't hold my breath ;')

>=20
>>> I see from your follow-up email that _this_ is the one Fedora
>>> claimed to have a Freeness problem with.  Can we scare up a cite for
>>> which one, exactly, they were referring to?  The concern their
>>> determination causes me is that _none_ of the four license you
>>> present here explicitly grant permission to translate.
>>
>> Sorry, I was already confused with so many threads.  So, there's one
>> more license, not derived from these, but which seems related to GPL.
>> It's the LDP (v1) license.  That's the one that was rejected by
>> Fedora:
>>
>> <https://gitlab.com/fedora/legal/fedora-license-data/-/issues/211>
>>
>> The reason was the prohibition to recommend an info manual.
>=20
> Ahhh.  Here it is.
>=20
>>> You may modify your copy or copies of the Document or any portion of
>>> it, thus forming a work based on the Document, and copy and
>>> distribute such modifications or work under the terms of Section 1
>>> above, provided that you also meet all of these conditions: [. . .]
>>> c) You must not add notes to the Document implying that the reader
>>> had better read something produced using Texinfo.
>=20
> Hah!  That's actually funny to me (and maybe to anyone who's shared a
> discussion thread with Eli Zaretskii).

It definitely is :D

>  But I don't think it belongs in
> a license.

I actually believe jokes belong to licenses.  Otherwise they'd be very
boring to read, and nobody would read them.  I'm joking, but a lot of
truth is said in jest.

>=20
>> I confused that thread, with the one about VERBATIM_TWO_PARA, in which=

>> you accused it of also being non-free.
>>
>> <https://github.com/spdx/license-list-XML/issues/1947#issuecomment-155=
4695533>
>=20
> Well, hang on--I was extrapolating from inadequate information.  I said=

> I didn't _know_ if permission to modify implied permission to translate=
,
> though I have reason to fear it doesn't, and I dropped the IANAL and
> TINLA disclaimers to cover my rear.  SPDX has real copyright lawyers.
> Let them opine.

I don't have much faith in that.  I asked them for advice when switching
to SPDX tags in the project, and didn't get any.

>=20
> If the Fedora Project doesn't have a problem with the LaTeX
> 2e/"traditional GNU documentation" license missing its translation
> permission paragraph, then I do not propose that they acquire such a
> problem.

Makes sense.

>=20
> But I think if we're going to go to the trouble of a relicensing push,
> we might as well employ all four clauses of LaTeX 2e/tGdl while we're a=
t
> it.

Latex2e only has 3 paragraphs (and each seems to be a clause).

<https://spdx.org/licenses/Latex2e.html>

I think Linux-man-pages-copyleft is fine, and both mtk and aeb seemed to
want to prefer that license for the project.  Jumping to another one
would be very difficult, as we'd need to get the authors of thousands of
pages to an explicit agreement, which I find unlikely to happen.
Jumping to Linux-man-pages-copyleft from other VERBATIM_* variants will
be easier, since there are very few VERBATIM_*-licensed pages.  One less
since today (yesterday, local time).

And Latex2e doesn't have any disclaimers about damages and other stuff.
I don't know if those are implied by the software being FOSS, but it's
probably safer to keep it.

BTW, I just found that there's a "GNU Free Documentation License" (with
many versions and variations), and they don't seem related to Latex2e,
but rather one of those GNU licenses that could be confused with a book.
They use the identifiers of the form GFDL-*.  E.g.:
<https://spdx.org/licenses/GFDL-1.1-invariants-only.html>

I'm not implying they are bad, and I like GPL, but I never really could
read it entirely in one sit.

>=20
>> They renamed GPL-2.0 to GPL-2.0-only, AFAIK.
>=20
> Ah.  That seems likely to have been of much higher impact.

<https://spdx.org/licenses/#deprecated>

Cheers,
Alex

>=20
> Regards,
> Branden

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------RP7abT9Dz6NqD0iPfo3SnnUo--

--------------ean8XYLCjStWnIsLzJPQmVb1
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRxPfoACgkQnowa+77/
2zKtuhAAn74wZXyeb+7JNr141Qodzm5ZPe7AdWH6IMlqweufMHeNvfXjENfzD/fR
Xt1vvPxDeEJCyz7TCNVotwz0lb8FIrCx/PNJOw8IK8MmHu7+MeR8biNlpSVvl8qS
NdFqIgBj0fO+6X4ie02qea5AxkJXJgjprfg0RJfS1aiB75nCQF1FjCQJa/XmH1uw
V19epQDIS1GEHrU+OPNNbriaXj4Oal4t56WOvGmOBt5vLd+UhXaTDgUHo9Q/6ovC
g6KneL8kXeCHfOhVUW3si96wH86OGHNsoznapQiKsL2riji53oQ3jsCL0upmGRDy
p6JeWSxoHaw/dI2tytSyjHzUlqKr5DEa3A6ZqCD2K2KdZVsg9IbGeb+T8AaW9htp
X1Jrhw93gZmo2YfMwr9dCrdPBoD7qrSoMnif3gVx4Z6bwJ4cH04yPYZ4961Cn6s7
zYTwV5eLcbq7N38or7HFn0bwVFdGhDfkNIQUFdygzCyK1l/aEG2fQmqu+278wtYN
EFpPuQ6rkGsE8FXakkh29fKdSto7WavQ2Xb3/7mk1CVD/k/fHxtIi0tWMlIGIXxE
aoXk+JqMMNsbR2n7AQKbha0NHWDjp0V+oX3pH2N9tZl1iT3lXmsJn3lvBB2zqd1C
ulfkahxPf8VWBYntjEkYHrwhZOEyNstjV4UH3Oj/ZU7xgbmSSlk=
=pT/u
-----END PGP SIGNATURE-----

--------------ean8XYLCjStWnIsLzJPQmVb1--

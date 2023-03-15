Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F0B3C6BB1F1
	for <lists+linux-man@lfdr.de>; Wed, 15 Mar 2023 13:31:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232670AbjCOMbp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Mar 2023 08:31:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232603AbjCOMbb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Mar 2023 08:31:31 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B43A412F25
        for <linux-man@vger.kernel.org>; Wed, 15 Mar 2023 05:30:42 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id r29so9121256wra.13
        for <linux-man@vger.kernel.org>; Wed, 15 Mar 2023 05:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678883440;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pnF67glUabzeOLK95pj4UFeNbPafkL4Ft3DT42kHuEc=;
        b=GbF/BH+gfh/woUcz4pXYfZmoZK35cqIy7wASmXk2ZZh73RoOn5PzLkOTA7G9YJSwFM
         o4psjbi21BJGG/EyspROD+oSH2dHAekUMqE5LJyFVwVExedILWkbqnjuol3l45BnrCn9
         3KawBLPaAmxFXUrii9Yk+pNEJEM2SSmhKvgsXXudFaq4GKHV3cTN5ERwS23EMwNrtHgC
         2U4geeeih75+POTfC8UNQ3uRGFUSgiduHvw919qTB1x7JY/UT8y7jHERc6wUCMCGPcL3
         klmL5puGcZYRf9UQt7Zj+ZgVL1bygizG0aXKrfgNaRvKDeD0d+/j1TNpwVBAqpnvdeIS
         kasA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678883440;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pnF67glUabzeOLK95pj4UFeNbPafkL4Ft3DT42kHuEc=;
        b=lRZ7CDvFfciU9RdjeyjOnyVD9n228eURUO1BDTaDuRn/5nSNG2Wny0ZkkHByZqiWZg
         xLgpN0q04i5SJn0/WhNUVRqFgSPvZIOVv74IKMq/bF+TcoksThsBPOH0n7lWkFONue39
         hcPPr4Bc5T8iERbWRycQ8N6nYsKWbqsyDajz09x2jbot5wQ2gp25GyDOlyBLH6pDEghw
         AQpZGCBtUWHBLHL8/XmfD0oU1+CwbUp1pi0oKuPSqB2OUN9pJepxv/42v6cJqgn6As0P
         KZL5x24joo4oVYpRJnEhW+2uV+iVk4XJyyQJtt6vI2Chro13+cz4rwcoKe7JjOpruuQC
         h5cQ==
X-Gm-Message-State: AO0yUKWsasr3okHhBo3GHJb552byrX0aaDh2IDhsVd/Ku52FmRGAVIRI
        uOyvrX0jnvG+SWPyj5xF9uocMHTT8FQ=
X-Google-Smtp-Source: AK7set98hmixFvtG8QUIfOsDt3tOWs+NeAIILePtL6/95KuZPdmpuZnJJcGnkYy6geVlc6z00Y/2Mw==
X-Received: by 2002:a5d:4850:0:b0:2c9:b9bf:e20c with SMTP id n16-20020a5d4850000000b002c9b9bfe20cmr2180191wrs.2.1678883440457;
        Wed, 15 Mar 2023 05:30:40 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id b15-20020adff90f000000b002cfe0ab1246sm4515959wrr.20.2023.03.15.05.30.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 05:30:40 -0700 (PDT)
Message-ID: <d3aee611-844b-fba3-5642-16b0ddc576a3@gmail.com>
Date:   Wed, 15 Mar 2023 13:30:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Revert "Many Pages: Remove references to C89"
Content-Language: en-US
To:     linux-man@vger.kernel.org, Oskari Pirhonen <xxc3ncoredxx@gmail.com>
References: <20230310015150.3545768-1-Matt.Jolly@footclan.ninja>
 <8899aff7-4193-dd54-4488-234b1a6cee83@gmail.com> <ZAq5gg+aQB5TrDQ3@dj3ntoo>
 <f5aac742-4417-fced-343d-002117d629f1@gmail.com> <ZA5/n8Ix+eCYnNgM@dj3ntoo>
 <591290fb-e78d-ad3a-8b25-4a860d26f775@gmail.com> <ZBAIkHrBm50vjSqL@dj3ntoo>
Cc:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        Matt Jolly <Matt.Jolly@footclan.ninja>,
        Guillem Jover <guillem@hadrons.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ZBAIkHrBm50vjSqL@dj3ntoo>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------IaaqA26ATWl585BNgiegS1nW"
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
--------------IaaqA26ATWl585BNgiegS1nW
Content-Type: multipart/mixed; boundary="------------Y0A82qq2UXKZAZNUNAdknUI3";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man@vger.kernel.org, Oskari Pirhonen <xxc3ncoredxx@gmail.com>
Cc: Brian Inglis <Brian.Inglis@Shaw.ca>,
 Matt Jolly <Matt.Jolly@footclan.ninja>, Guillem Jover <guillem@hadrons.org>
Message-ID: <d3aee611-844b-fba3-5642-16b0ddc576a3@gmail.com>
Subject: Re: Revert "Many Pages: Remove references to C89"
References: <20230310015150.3545768-1-Matt.Jolly@footclan.ninja>
 <8899aff7-4193-dd54-4488-234b1a6cee83@gmail.com> <ZAq5gg+aQB5TrDQ3@dj3ntoo>
 <f5aac742-4417-fced-343d-002117d629f1@gmail.com> <ZA5/n8Ix+eCYnNgM@dj3ntoo>
 <591290fb-e78d-ad3a-8b25-4a860d26f775@gmail.com> <ZBAIkHrBm50vjSqL@dj3ntoo>
In-Reply-To: <ZBAIkHrBm50vjSqL@dj3ntoo>

--------------Y0A82qq2UXKZAZNUNAdknUI3
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Oskari,

On 3/14/23 06:39, Oskari Pirhonen wrote:
> Hi,
>=20
> On Mon, Mar 13, 2023 at 13:00:52 +0100, Alejandro Colomar wrote:
>=20
> ... snip ...
>=20
>>>> <https://port70.net/~nsz/c/c89/c89-draft.txt>
>>>>
>>>> I suggest you download that file, and use a function like this:
>>>>
>>>> $ stdc89() { grep "[[:alpha:]] \**\b$1([[:alnum:]*,. ]*);" /path/to/=
c89-draft.txt; }
>>>> $ stdc89 printf
>>>>          int printf(const char *format, ...);
>>>>          int printf(const char *format, ...);
>>>>
>>>
>>> I gave this a quick spin and it seems to work decently well. So thank=
s
>>> for that.
>>
>> :-)
>>
>>> It's still not quite as nice as having C89 mentioned in
>>> STANDARDS, and couldn't this be leveraged to fix up the inconsistenci=
es
>>> you mentioned earlier?
>>
>> Yup, you caught me.  That's what I thought when writing the email.  :p=

>>
>=20
> I played around with this a bit more, and with a little work it should
> be possible to query, eg, all the "str*" functions. As it's written,
> it's doable with something like this (but not the most elegant):
>=20
>     $ stdc89 'str[[:alnum:]]*'
>     double strtod(const char *nptr, char **endptr);
>     long int strtol(const char *nptr, char **endptr, int base);
>     char *strcpy(char *s1, const char *s2);
>     char *strcat(char *s1, const char *s2);
>     int strcmp(const char *s1, const char *s2);
>     ...
>=20
> The duplicates and leading whitespace is a trivial change.

stdc89()
{
    grep "[[:alpha:]] \**\b$1([[:alnum:]*,. ]*);" /path/to/c89-draft.txt =
\
    | sort \
    | uniq;
}

That seems to be enough.  I don't know if in some cases there will be
whitespace difference that will make this not work, but I tried with
'printf' and 'gets' and it seems to work so far.

>=20
> Looking at the site you linked to for the c89-draft.txt, there's also
> C99, C11, and C2x. With yet some more work, it'd be possible to have
> equivalent functions for those standards as well. They could even be
> combined to create an "std-diff" tool to give, eg, new "str*" functions=

> introduced in C89 -> C99.
>=20
> Perhaps such a tool already exists, but I thought it worth mentioning
> here in case anyone reading this gets inspired to write it. I've added
> it to my (ever growing) TODO list, but don't know when I might get
> around to actually giving it a go.

Interesting idea.  Sounds fun to do.  I'll check if we can redistribute
the drafts of the standard in the Linux man-pages repo.  If so, we could
have the standard .txt files in some directory inside the repo, and then
have a script that reads those files.

>=20
> ... snip ...
>=20
>>> "Usefulness" seems to be a hard sell for you, but perhaps you would
>>> reconsider it based on the historical relevance of C89? It was, after=

>>> all, the first proper standard of the C language. If you don't want t=
o
>>> promote C89 by having it mentioned alongside the others, perhaps you'=
d
>>> be open to the idea of adding a historical note?
>>
>> I've been considering something like that for a long time.  The
>> STANDARDS section (previously known as CONFORMING TO), is a mix of a
>> proper standards section, and what a HISTORY section should contain.
>>
>> It would be interesting to do a split, and inaugurate a HISTORY sectio=
n.
>> For that section, I would keep any references to C89, since as you say=

>> it's historically very relevant.  Thus, I will revert the patch, and l=
ater apply some patches that move the info without discarding it.
>>
>=20
> Well this is good news, and if you ask me, an improvement in the long
> run instead of just returning to the status quo.

Nice :)

>=20
> Much appreciated :)

You're welcome :-)

>=20
> - Oskari

Cheers,

Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------Y0A82qq2UXKZAZNUNAdknUI3--

--------------IaaqA26ATWl585BNgiegS1nW
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQRumcACgkQnowa+77/
2zIaZg//bCt8sd9kV4yj0LmXN0+Mz94aTKxdjAoRQlnEVv/l7xkQFYeXOkD95lq3
iaPIOHvc5G1Pa2wKFwpJmYAFXgPyd8/oLQ5/BOA2G8mdzIKU5GRgHxJ71OCEUWwe
sIhv9nl0qwr0yA2gzk6iSkA2tlqDVnW5iC1DmBCB0UUv6e2baEHyEGbo16uFOqSy
AlM8dAjhoev+xBiT5SQY0wbtob42RJR2lggWeEI5l7afXclWcMt4bB+36mZxbXWu
m0zF5VztMy4Jd7NY/YNHIUBmx6P9u8ejHKbKRwKI67RXU7vX+MvUucKaE40vnw1X
QdvxLAQOVZEIBuL1mspbYQeWRNAdoJNsRHR3b8yC5A23hsSxja//yLxtQjwUJSkb
hkG9XM/zGdfkWNpo4Ob5nX1CvqJoOa5kTVEIaYVxFRb5gHXeGUCM3rQVaJb+kTBf
D2XH0l7LUVaOamboeeEBzC3clThycIyimDpWh2FyhdbOYW0hYw6wxzvogbIhHBc6
gs+12dnFf1y0tvXM37ObEl+IS6R+Kjeka1rNt9KfdcO8awQwQjFF69lvY74Skorx
amBH56XbwTTMZHyfgDIFpCa/b0X4U2rKTL9yfssbwmsMwsMi2Gvx8LvRozj6SEGN
75KJzF5X/PvsUpDZuCwpqnZxpTWqwsHcylU0LpH1C0ATrWSg5gs=
=TGMl
-----END PGP SIGNATURE-----

--------------IaaqA26ATWl585BNgiegS1nW--

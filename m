Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E25766B7716
	for <lists+linux-man@lfdr.de>; Mon, 13 Mar 2023 13:01:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230119AbjCMMBW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 13 Mar 2023 08:01:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230474AbjCMMBI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 13 Mar 2023 08:01:08 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA5AA4D2A9
        for <linux-man@vger.kernel.org>; Mon, 13 Mar 2023 05:01:02 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id bg16-20020a05600c3c9000b003eb34e21bdfso10783948wmb.0
        for <linux-man@vger.kernel.org>; Mon, 13 Mar 2023 05:01:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678708861;
        h=in-reply-to:from:cc:content-language:references:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t4RByKMQEIqnlrZpCQFicFDQm6VNCdiCOYY2cLBULBA=;
        b=ihmV8Bkecxbo2ipB/BggiHxUFThC0dLQGskjZIYxC93Jww2rnhOdXlUZbcb8Ltlz+p
         NNuJl08CEko6Db7y4d78QDiCkfds+CCcu3NHRIds2Y1ADaEAX3yzVmocwtrBl6Wu+Uwv
         HW5dNoJMeaOws2akvRjGFCulaNlsQzCy/uFfdHCWogfwdq/X3ynPrxOWq7q0rtBHWLnx
         LZpboQIZQrErnq8gJGYXzgtcMmxV2ElFOj//0S7IIBHq412ijgG6Lb92I69h0SlyeNfs
         b7PIGaLF9E3U+tKMQfFeOKtlJOYKmn0jxRqqaVURzmzbOAbc1J5HshzaZlqwKwtH/Wv8
         RYCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678708861;
        h=in-reply-to:from:cc:content-language:references:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=t4RByKMQEIqnlrZpCQFicFDQm6VNCdiCOYY2cLBULBA=;
        b=eOV0bSQ/YS+XLu8CYnUBNG/k9myUXS6ld3Ai5ZxUebWXIO/HcMVA94oV1PnCeaIU6k
         Dt8ap1DU5oxvYKZwjxMR3ckQnv3oHH5karzIzMxNQ4ocr6F3wDAT+l49w7CCp0dyFeM0
         H0+yWEx4HJdztNT6nYkeLXPx5kDaBfYurHb6QwCdS2u0fOCxV7k0kCmruZQrgrVLlqwO
         nBIIasYSU8fV6dlnaV8NnP8eeyx5DC0/ly50GjckawGBQEZSdVNl3lZSPPkWngNduf6l
         BpYLkPkcONs207BY56sa8OVIKNh9el4OHOyzvno2hZibg08FxiF7mGb5Ov9r2SCiJQ4P
         Cm0A==
X-Gm-Message-State: AO0yUKWUOGTDxgx9L/AFS2RvLqaKdWMPOYaOzeJZVy20mRnflUTiaTGF
        EWMzbSrtKS9VvkI5gV16wdE=
X-Google-Smtp-Source: AK7set/d94TeKApracGsqY4D4Lvg/fa61EfoNQe6RWfhxjsw/thNJ15tX2djz9uG0O+es6CYbzMdow==
X-Received: by 2002:a05:600c:4e90:b0:3df:fcbd:3159 with SMTP id f16-20020a05600c4e9000b003dffcbd3159mr7943678wmq.3.1678708861141;
        Mon, 13 Mar 2023 05:01:01 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id iz20-20020a05600c555400b003ed201ddef2sm5401218wmb.2.2023.03.13.05.01.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Mar 2023 05:01:00 -0700 (PDT)
Message-ID: <591290fb-e78d-ad3a-8b25-4a860d26f775@gmail.com>
Date:   Mon, 13 Mar 2023 13:00:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Revert "Many Pages: Remove references to C89"
To:     Oskari Pirhonen <xxc3ncoredxx@gmail.com>
References: <20230310015150.3545768-1-Matt.Jolly@footclan.ninja>
 <8899aff7-4193-dd54-4488-234b1a6cee83@gmail.com> <ZAq5gg+aQB5TrDQ3@dj3ntoo>
 <f5aac742-4417-fced-343d-002117d629f1@gmail.com> <ZA5/n8Ix+eCYnNgM@dj3ntoo>
Content-Language: en-US
Cc:     linux-man@vger.kernel.org, Brian Inglis <Brian.Inglis@Shaw.ca>,
        Matt Jolly <Matt.Jolly@footclan.ninja>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ZA5/n8Ix+eCYnNgM@dj3ntoo>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------lRPzTdy3qB1BmnOGli4SGYof"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------lRPzTdy3qB1BmnOGli4SGYof
Content-Type: multipart/mixed; boundary="------------0WqS6lp79rH8TDQK9ftm7Xw5";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Oskari Pirhonen <xxc3ncoredxx@gmail.com>
Cc: linux-man@vger.kernel.org, Brian Inglis <Brian.Inglis@Shaw.ca>,
 Matt Jolly <Matt.Jolly@footclan.ninja>
Message-ID: <591290fb-e78d-ad3a-8b25-4a860d26f775@gmail.com>
Subject: Re: Revert "Many Pages: Remove references to C89"
References: <20230310015150.3545768-1-Matt.Jolly@footclan.ninja>
 <8899aff7-4193-dd54-4488-234b1a6cee83@gmail.com> <ZAq5gg+aQB5TrDQ3@dj3ntoo>
 <f5aac742-4417-fced-343d-002117d629f1@gmail.com> <ZA5/n8Ix+eCYnNgM@dj3ntoo>
In-Reply-To: <ZA5/n8Ix+eCYnNgM@dj3ntoo>

--------------0WqS6lp79rH8TDQK9ftm7Xw5
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Oskari,

On 3/13/23 02:42, Oskari Pirhonen wrote:
[...]

> I'm neutral on removing POSIX.1-1996 if it was barely mentioned to begi=
n
> with (a search on patch found just 2 instances of "1996") which is not
> the case for C89.
>=20

[...]

>> <https://port70.net/~nsz/c/c89/c89-draft.txt>
>>
>> I suggest you download that file, and use a function like this:
>>
>> $ stdc89() { grep "[[:alpha:]] \**\b$1([[:alnum:]*,. ]*);" /path/to/c8=
9-draft.txt; }
>> $ stdc89 printf
>>          int printf(const char *format, ...);
>>          int printf(const char *format, ...);
>>
>=20
> I gave this a quick spin and it seems to work decently well. So thanks
> for that.

:-)

> It's still not quite as nice as having C89 mentioned in
> STANDARDS, and couldn't this be leveraged to fix up the inconsistencies=

> you mentioned earlier?

Yup, you caught me.  That's what I thought when writing the email.  :p

>=20
>>
>>>
>>> Personally, I see this more as an issue of manpages inappropriately
>>> editorializing. Mentioning in DESCRIPTION of gets(3) to "Never use th=
is
>>> function" is perfectly fine. In fact, I applaud that it's emphasized
>>> before even getting into what the function does.
>>>
>>> From the original commit message:
>>>
>>>> Let's move forward, so readers get the intended notice that C89 is n=
ot a
>>>> useful version of C.
>>>
>>> This is incorrect. I can write useful code, even in C89.
>>>
>>> More importantly, I find it to be an inappropriate attitude for a man=
ual
>>> to take.
>>
>> I admit some editorializing.  I think there needs to be some.  Otherwi=
se,
>> there will always be some projects that request support for their
>> favorite standard.  We're close to the point where C89 becomes irrelev=
ant.
>> I admit we're not yet there, but I'm not sure if it's because it's rea=
lly
>> needed, or because some projects blindly stuck to it for fear of the
>> unknown.  I believe it's the latter, and would like to ask you to try =
C99,
>> or show some proof that you still need C89 for some reasons that are
>> different from "I like it".  Please understand that I'm not going to
>> spend my time on documenting POSIX.1-1988 or even K&R C just because
>> some project likes it (there are still projects that use K&R functions=
).
>>
>> However, if you show me that some system can't possibly have C99 in an=
y
>> form, because there's no C99-compatible compiler or libc that runs on
>> that system, I would reconsider reverting the patch.
>>
>=20
> I appreciate the honesty WRT admitting to editorializing. Even if we
> disagree on it here.
>=20
> "Usefulness" seems to be a hard sell for you, but perhaps you would
> reconsider it based on the historical relevance of C89? It was, after
> all, the first proper standard of the C language. If you don't want to
> promote C89 by having it mentioned alongside the others, perhaps you'd
> be open to the idea of adding a historical note?

I've been considering something like that for a long time.  The
STANDARDS section (previously known as CONFORMING TO), is a mix of a
proper standards section, and what a HISTORY section should contain.

It would be interesting to do a split, and inaugurate a HISTORY section.
For that section, I would keep any references to C89, since as you say
it's historically very relevant.  Thus, I will revert the patch, and late=
r apply some patches that move the info without discarding it.

Cheers,

Alex

> Saying that C89 is
> obsolete in the note would be acceptable IMO, but not having any mentio=
n
> of C89 at all makes the manpages feel incomplete. Others have shared
> this sentiment when chatting with them online.
>=20
> There is also somewhat of a precedent of such a line being included in
> STANDARDS. For example, the following excerpts from gets(3) and
> printf(3), respectively:
>=20
>> LSB deprecates gets().  POSIX.1-2008 marks gets() obsolescent.
>> ISO C11 removes the specification of gets() from the C language,
>> and since version 2.16, glibc header files don't expose the
>> function declaration if the _ISOC11_SOURCE feature test macro is
>> defined.
>=20
>> The dprintf() and vdprintf() functions were originally GNU
>> extensions that were later standardized in POSIX.1-2008.
>=20
> - Oskari

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------0WqS6lp79rH8TDQK9ftm7Xw5--

--------------lRPzTdy3qB1BmnOGli4SGYof
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQPEHQACgkQnowa+77/
2zKdDw//T1+kp8/NaUYxyu9SVpNVD3GmH7Wrioz9JI49GmvAti0fmpPmokacdnqC
rsgttVn8KPTKCO7EuVNfaRbP+r2R6qbhKgmKiZmLgQ8ZktroskobBq6v7pOMU54n
PKg8YzYJZo1tQhGj/9RIBDhYGEHigchNNO+oKgtGForpv8ZIFEPILFeHow+j6IdN
c+KbJDMbupSA+iYcx7gSMv9Ht5KZVTO3KdcRw99hO9/9xFQM2vqCwJX+vmVm6wMg
J34xqlrJlkUlX8EJa8ESEE0Vr48P90slkbPXMhnfpnYGFcCulqmC/g6IXlDBS0Vd
/cJt2mFscTV98UkzScyMQUe2J8RTRDVEom/+ioBGuvlQtLoTjEesNhGcWkscqwH1
2DFJo+kNHl7sjnwD5f2/PfvBhFQLfSH/4Jqwz7g7oLoUHUJ+lB/QTWHJAvmiHcQx
6Gqdceu/dQlesJcgACzj/2KQ1QfKHxdxsHX/1lwvKujGkxN88BZ+0YeB4K06ZhwT
LP2rnlyIF3WKlXgCDnZnjbX8rlUdPWrmYs2rol7YCTXVCirPffuHxEWOeQZeKxnE
60gDZWK7RPxwEDPN/HlBTTrRSfcxcCfo52/zbRNnsbqBlJU491bk62FjcKbc0nTT
HTinJTgkF/sYnH52TNSCSZCel+mZylzPCvwmQ17GxC35ORm3gjU=
=rXcv
-----END PGP SIGNATURE-----

--------------lRPzTdy3qB1BmnOGli4SGYof--

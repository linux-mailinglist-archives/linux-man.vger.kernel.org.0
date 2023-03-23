Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C23036C6945
	for <lists+linux-man@lfdr.de>; Thu, 23 Mar 2023 14:13:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231476AbjCWNNZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 23 Mar 2023 09:13:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231634AbjCWNNU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 23 Mar 2023 09:13:20 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32B752101
        for <linux-man@vger.kernel.org>; Thu, 23 Mar 2023 06:13:15 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id fm20-20020a05600c0c1400b003ead37e6588so1143667wmb.5
        for <linux-man@vger.kernel.org>; Thu, 23 Mar 2023 06:13:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679577194;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hqAgsQ7SR/YaQPt3+Q8QV7woeCKWICY+eeF1yJw1BaQ=;
        b=HH7L6aRQ2R26ghzviLSDYP6GZXal1ygqby9MwFWSq11tdire8721KWIz24dskuvBb5
         +foStd5yRRejcIHWRwtraTa2UurccFNoX5fP056q45VaqMQhQwRAHWmz3OuL2GI4/CIv
         0J+UgY3aIhukuCXgzXoZQKwiTEpZ8t+LYaB7HC3Y5E/GTfZBhR1mME4vel+5fzPop+hk
         0Aevs2eQDrVA1tw5tSrEICgburgSFeyR0JmeH9P+4ZpK+V82qYS9R0fkBGjuZDdB//E8
         f1XpCT4dJHyN1Tq/COIOuyokZsubCZyiz24VE4HTQfQShBsR702nJtreIRgjPpCDxpqb
         259w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679577194;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hqAgsQ7SR/YaQPt3+Q8QV7woeCKWICY+eeF1yJw1BaQ=;
        b=JwoOSprD+bL2kBBFYywiUCeme5Uigi7iX4GTCgMthD/hPLcKfCpIMrbC2DC7cft43K
         NN0zaLStEcese6sIzziRD3U7fs7TbRg0vZKqfjnveDogjXqCEGUDQPt4FEIQhBECKpwB
         OAb54/usVSoDK4uZhnDoUwzIL6C9heQWau/OMk+8BfHoomGSHDLnoekDFulm4xxcyoDi
         LVUlTE0FHYYPp62QWGn0l9iFz/XdGW+sx2X+sL+xSAVWVkBcXnw7lMBCz18CfSfPmWjP
         7q4vtvFxr3ZTUmwCFiT10Ex0zjnb7O3kfxdSvohX2HGtHd83uvzFJsGuroYpXU3zjRGw
         00uw==
X-Gm-Message-State: AO0yUKULBUGrduh+xthPy6CwoXVl90Lti0TEsd5LV/7mve7FkeqWqIkW
        20bcVkhp2Sz6a0QeL5cuVTc=
X-Google-Smtp-Source: AK7set/Ynd7Otq/Rd5dcvH78vctMlJma7kJYVHuapAZ0+EBCgZ5XbpQybnc90oK+uy0mbcyhIQdprQ==
X-Received: by 2002:a05:600c:224b:b0:3ed:6ba7:66d9 with SMTP id a11-20020a05600c224b00b003ed6ba766d9mr2601109wmm.5.1679577194597;
        Thu, 23 Mar 2023 06:13:14 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id o14-20020a05600c378e00b003ed2276cd0dsm1824788wmr.38.2023.03.23.06.13.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Mar 2023 06:13:14 -0700 (PDT)
Message-ID: <82ff42f9-629f-53ea-bbfd-0f98f365184e@gmail.com>
Date:   Thu, 23 Mar 2023 14:13:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Revert "Many Pages: Remove references to C89"
Content-Language: en-US
To:     Sam James <sam@gentoo.org>
Cc:     Matt Jolly <Matt.Jolly@footclan.ninja>, linux-man@vger.kernel.org
References: <20230310015150.3545768-1-Matt.Jolly@footclan.ninja>
 <8899aff7-4193-dd54-4488-234b1a6cee83@gmail.com> <877cv8xc6e.fsf@gentoo.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <877cv8xc6e.fsf@gentoo.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------oXQvsLj15IkJiVnuHDSRht0P"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------oXQvsLj15IkJiVnuHDSRht0P
Content-Type: multipart/mixed; boundary="------------N8NEKt94xbMwlVJxJ26ZBZi5";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Sam James <sam@gentoo.org>
Cc: Matt Jolly <Matt.Jolly@footclan.ninja>, linux-man@vger.kernel.org
Message-ID: <82ff42f9-629f-53ea-bbfd-0f98f365184e@gmail.com>
Subject: Re: Revert "Many Pages: Remove references to C89"
References: <20230310015150.3545768-1-Matt.Jolly@footclan.ninja>
 <8899aff7-4193-dd54-4488-234b1a6cee83@gmail.com> <877cv8xc6e.fsf@gentoo.org>
In-Reply-To: <877cv8xc6e.fsf@gentoo.org>

--------------N8NEKt94xbMwlVJxJ26ZBZi5
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Sam

On 3/23/23 06:32, Sam James wrote:
>=20
> Alejandro Colomar <alx.manpages@gmail.com> writes:
>=20
>> [[PGP Signed Part:Undecided]]
>> Hi Matt,
>>
>> On 3/10/23 02:51, Matt Jolly wrote:
>>> Hi All
>>>
>>> I hope this email finds you well. I am writing to raise an issue that=
 has been causing inconvenience
>>> for me (and potentially others). The recent removal of C89 informatio=
n from man pages
>>> (72b349dd8c209d7375d4d4f76e2315943d654ee9) has put me in a difficult =
situation.
>>> As I continue to work on code that adheres to the C89 style, such as =
cURL, I am unable to quickly
>>> determine if a particular function can be used or if it was introduce=
d in a later standard like C99.
>>> This slows down my workflow and hampers my productivity.
>>>
>>> Therefore, I kindly request that we revert the changes made in the "M=
any pages: Remove references to C89" patch.
>>> Furthermore, I urge everyone to recognize the importance of this info=
rmation and ensure it is not removed from man pages in the future.
>>
>> The main problem was that the existing info about C89 was not consiste=
nt.
>> Some pages declared APIs being standard since C89, while others didn't=
=2E
>> Incorrect info isn't much better than no info.
>>
>> I'm curious about cURL's real need for C89.  I see that cURL uses GNU
>> extensions (-std=3Dgnu89), which actually pulls most of C99[1] (I thin=
k
>> it pulls the entire C library, and most of the core language).
>=20
> I don't really agree with it, but the gist is at
> https://daniel.haxx.se/blog/2022/11/17/considering-c99-for-curl/.
>=20
> The general principle here being two things, I guess:
> 1. It's pretty useful to have this information (even if it's just
> on a best-effort basis) because I can cite it in arguments even if
> a project is using >=3D C99.
>=20
> 2. People expect the information to be there, so omitting it ends up
> giving the impression something just isn't in C89, rather than the
> reader realising the information is removed from the man pages entirely=
=2E
>=20
> but also, and this was the case for Matt here:
>=20
> 3. I don't always have a choice. Especially doing distribution work,
> I end up patching and contributing to all sorts of projects, and while
> I wish many things would use newer C, they're either dead projects, or
> their maintainers are of a strong mind on the matter.
>=20
>>
>> Virtually all (even MS, which has always been the last in this)
>> systems support C99; why would you consciously avoid it?  Is there
>> any system that doesn't yet support it?  Which are the C libraries
>> that you need to support that don't provide C99 functions by default
>> (or at all)?
>>
>> I'd like to really understand the need for C89 in 2023.
>=20
> i.e. what I'm saying is that it's not so much about the need, but rathe=
r
> that changing the man pages just ends up inconveniencing people who
> aren't really happy about using C89 either.

Makes sense.  And yeah, history is always useful, even for corner
cases, which is why we still document things like 4.0BSD.  I'm almost
finished in adding the HISTORY section and reorganizing VERSIONS and
STANDARDS (and NOTES).  This week or next week, I'll push the commit.

So far, I've done:

 536 files changed, 4704 insertions(+), 4278 deletions(-)

And there are still 353 pages pending.  :)
But the change is looking quite good.  I think it will be a nice
improvement.

Cheers,
Alex

>=20
> best,
> sam

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------N8NEKt94xbMwlVJxJ26ZBZi5--

--------------oXQvsLj15IkJiVnuHDSRht0P
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQcUGkACgkQnowa+77/
2zJ40g//SLF/p3UsCe6JBZl/lS5Om5D3gIaV/S5sGJ2F5k6P/l4RqE+3grDSroJk
rRYfClEeo4pllMxxeeP1RYuHNwRChbDGQuN5XoHl/XukFf0zzs9KsmgeWikmbDTZ
SeuXTlXkdpU1ggaKVqLKJFCI4QuSKCef1VILHXSWtDpr0B9geLLzUn4URAcVbGJz
D5Z4LCiU4n7xDyvDwP3Ukdvq+uxpkWWJ4kaF6MsHp2yuhEiE3G0Ti4ij4ezumtYI
vaqnxXW7UXnE2xMq7rVtO2PyGNiQkOi0AQnbXWCDHgRYnc2iu+e+wY/z8e1jfyTY
3BWZFdX494q6A9sW/eFo97wQlditweHmWHeK1ojGerJE4uH5GQHnKk4F8AvROMxx
BlrEoxeJLgTstVfhj9qUAhi51b0Z7AZ1sKtrF54D/EDamZuOpgBF9DpspX8UrKsC
3vWrYXaRpla6d9sXf4A+/hyUXWrP4TQmIcc7JOqwddM9bnKn0WlnkXOPKtv0Z9Tw
3DCEzS8HHMT2ed3oLi4XcRFILUgZq4uiSj/hJodcaXyImWqq5grAKLhH0iMriCiP
80fWU4kVDZNLcynq11rcQReIL0ey46SrgfqAxVqMx9E/HEOqETc/p6JB4lJonuMa
dY2dgEzJ2pLXTp9ULShJb4IXJwoEFKhYJli/m+5flaf6zNSIKDI=
=9Jrd
-----END PGP SIGNATURE-----

--------------oXQvsLj15IkJiVnuHDSRht0P--

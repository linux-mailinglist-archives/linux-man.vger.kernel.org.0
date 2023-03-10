Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 977726B4069
	for <lists+linux-man@lfdr.de>; Fri, 10 Mar 2023 14:29:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229804AbjCJN3g (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Mar 2023 08:29:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229453AbjCJN3f (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Mar 2023 08:29:35 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E32862FD2
        for <linux-man@vger.kernel.org>; Fri, 10 Mar 2023 05:29:34 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id v16so5090565wrn.0
        for <linux-man@vger.kernel.org>; Fri, 10 Mar 2023 05:29:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678454973;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mA3bBX62wsxXLqQCPWAFaaXLpUx79p30AC3plZsiIQQ=;
        b=gYQ/6EVdW1UNtbLBl9AlH7DUTRaLZLYJYbwdWTx7e5svWOQPr0P3u6gjjxj5VAumLQ
         TgkynW4WbGJ0oOboEKikyiamop5CQot3jvgb4hH51ZOa3qh8e/sZ4BcqJ0dMIqA2UF4s
         MQAF8Q6CpQYpigivLkExSju/X+YT6GD/Ayl3nmdtL6LlIZonl+v93bBOQ2m1zFTHfeWL
         uSj3oPKag+saKmphfi/+q9xHR+F+re987ViKtlWUN92TiqecVr54CudCYM2zdNpmwmPm
         GQDoN9R+SRkUb9o7B3cvnacJm7VBdL4WEUC0fU+LzRAEbUDnE9OxcsMIdaFTzvN0hjzs
         YD9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678454973;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mA3bBX62wsxXLqQCPWAFaaXLpUx79p30AC3plZsiIQQ=;
        b=3GnY1SySyExj5BYUI/pt95QXsvvq7/M6LSVjhQJF5OI5R0/gepJmsIjMNHa4aFIkMe
         7VPRhyml8hKGUuV44vRlc7RemotMS7FqOkNuXxouZQ6mguI+aiBzKhhjK7e4XCI8N8Qg
         w0uSREtfP9rW1MYa547Gb2IssIDb4ug5AuWIzP1YnaJ9tg0TIKtljOCCqpRNvESL0CAp
         rRmC1zbuWevdkOLo2303zHqvUvNUgk54Gf6WJFteops+1+qdeACvK0UVYQ7Vsy1QKgt8
         2B2tr04zoX99OwWLFRS1WEGLCC7EnCJEvaN/HJRTbuphbjS3l1jNF6hpXXLqWJYx2CV4
         +0Fw==
X-Gm-Message-State: AO0yUKV8fUUinYSpMNpNiMQpkCGreGL2cUaM2nHJFQnCrgRKaDkjRKPw
        DYN3LIZCUSRr+QRIObj98+jm4dS8MQc=
X-Google-Smtp-Source: AK7set9Aw9I25D/85+9ghlPnUzQ0sMCppOtfWePG3XlTphZ8CS4ilDD3flCt3xbyLggSUpza83NyDg==
X-Received: by 2002:adf:ce91:0:b0:2c3:fb3e:ae85 with SMTP id r17-20020adfce91000000b002c3fb3eae85mr17427120wrn.44.1678454972832;
        Fri, 10 Mar 2023 05:29:32 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id b18-20020adfee92000000b002c70bfe505esm2240753wro.82.2023.03.10.05.29.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Mar 2023 05:29:32 -0800 (PST)
Message-ID: <f5aac742-4417-fced-343d-002117d629f1@gmail.com>
Date:   Fri, 10 Mar 2023 14:29:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Revert "Many Pages: Remove references to C89"
Content-Language: en-US
To:     Oskari Pirhonen <xxc3ncoredxx@gmail.com>,
        Matt Jolly <Matt.Jolly@footclan.ninja>,
        linux-man@vger.kernel.org
References: <20230310015150.3545768-1-Matt.Jolly@footclan.ninja>
 <8899aff7-4193-dd54-4488-234b1a6cee83@gmail.com> <ZAq5gg+aQB5TrDQ3@dj3ntoo>
Cc:     Brian Inglis <Brian.Inglis@Shaw.ca>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ZAq5gg+aQB5TrDQ3@dj3ntoo>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------QSPJWovA0y6oDfeZ7eJD1EPf"
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
--------------QSPJWovA0y6oDfeZ7eJD1EPf
Content-Type: multipart/mixed; boundary="------------f2b411TAcYIEUSfb4Pj3KVz0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Oskari Pirhonen <xxc3ncoredxx@gmail.com>,
 Matt Jolly <Matt.Jolly@footclan.ninja>, linux-man@vger.kernel.org
Cc: Brian Inglis <Brian.Inglis@Shaw.ca>
Message-ID: <f5aac742-4417-fced-343d-002117d629f1@gmail.com>
Subject: Re: Revert "Many Pages: Remove references to C89"
References: <20230310015150.3545768-1-Matt.Jolly@footclan.ninja>
 <8899aff7-4193-dd54-4488-234b1a6cee83@gmail.com> <ZAq5gg+aQB5TrDQ3@dj3ntoo>
In-Reply-To: <ZAq5gg+aQB5TrDQ3@dj3ntoo>

--------------f2b411TAcYIEUSfb4Pj3KVz0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Oskari,

[reordered your sentences for my reply]

On 3/10/23 06:00, Oskari Pirhonen wrote:
> Hi,
>=20
> On Fri, Mar 10, 2023 at 03:22:12 +0100, Alejandro Colomar wrote:

[...]

>> The main problem was that the existing info about C89 was not consiste=
nt.
>> Some pages declared APIs being standard since C89, while others didn't=
=2E
>> Incorrect info isn't much better than no info.
>>
>=20
> This is something that can (and should) be fixed then, instead of
> blindly dropping all references to C89, no?

We decided back in 2020 that it wasn't worth the extra effort to
check C89.

[...]

>> I'd like to really understand the need for C89 in 2023.
>>
>=20
> Some projects might like C89 and there's not much that can be done on
> that front without the maintainers having a change of heart...
>=20
> What is not fine, on
> the other hand, is saying that it's in C99 and POSIX.1-2001 but giving
> the impression that it's all of a sudden _not_ in C89 anymore.
>=20
> The STANDARDS section should not be the place for opinions,
> rather facts about when something was standardized. If this is not the
> case then perhaps it should be renamed to something else. "STANDARDS
> EXCEPT ONES WE DON'T LIKE" comes to mind.
>=20

But there are many standard.  Who decides which to mention and which
not to mention?  How about POSIX.1=E2=80=901988, POSIX.1=E2=80=901990, an=
d
POSIX.1=E2=80=901996?

There are still projects out there that care about POSIX.1=E2=80=901996, =
and
that's not compelling enough for me to do the extra work of searching
if something happens to be supported by it.  I will just state
POSIX.1-2001, which is the oldest one I care about, and live with it.

In fact, some pages documented POSIX.1=E2=80=901996, and I removed any me=
ntions
to it in the same commit that removed mentions to C89, and even forgot
to mention it in the commit message.


>> I'd like to really understand the need for C89 in 2023.
>>
>=20
> Some projects might like C89 and there's not much that can be done on
> that front without the maintainers having a change of heart...

If you really want C89, I suggest (as I did in the commit message) that
you read the C89 Standard itself, which will be much more precise than
the Linux man-pages have ever been or will ever be.

However, I suggest you change your heart, and consider C99, since that's
the future (or the past, I should say).  I would at least ask that you
show _proof_ that you _need_ C89, before I consider spending some extra
time in documenting C89 in the man pages.

Especially, when you can just download a plain text version of the C89
Standard, and grep(1) for the function name you're interested in:

<https://port70.net/~nsz/c/c89/c89-draft.txt>

I suggest you download that file, and use a function like this:

$ stdc89() { grep "[[:alpha:]] \**\b$1([[:alnum:]*,. ]*);" /path/to/c89-d=
raft.txt; }
$ stdc89 printf
         int printf(const char *format, ...);
         int printf(const char *format, ...);


>=20
> Personally, I see this more as an issue of manpages inappropriately
> editorializing. Mentioning in DESCRIPTION of gets(3) to "Never use this=

> function" is perfectly fine. In fact, I applaud that it's emphasized
> before even getting into what the function does.
>=20
> From the original commit message:
>=20
>> Let's move forward, so readers get the intended notice that C89 is not=
 a
>> useful version of C.
>=20
> This is incorrect. I can write useful code, even in C89.
>=20
> More importantly, I find it to be an inappropriate attitude for a manua=
l
> to take.

I admit some editorializing.  I think there needs to be some.  Otherwise,=

there will always be some projects that request support for their
favorite standard.  We're close to the point where C89 becomes irrelevant=
=2E
I admit we're not yet there, but I'm not sure if it's because it's really=

needed, or because some projects blindly stuck to it for fear of the
unknown.  I believe it's the latter, and would like to ask you to try C99=
,
or show some proof that you still need C89 for some reasons that are
different from "I like it".  Please understand that I'm not going to
spend my time on documenting POSIX.1-1988 or even K&R C just because
some project likes it (there are still projects that use K&R functions).

However, if you show me that some system can't possibly have C99 in any
form, because there's no C99-compatible compiler or libc that runs on
that system, I would reconsider reverting the patch.

Cheers,

Alex

>=20
> - Oskari

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------f2b411TAcYIEUSfb4Pj3KVz0--

--------------QSPJWovA0y6oDfeZ7eJD1EPf
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQLMLQACgkQnowa+77/
2zI0FhAAhwI8K/oNWtUmg5e0/gQo5Ir+B0sJ9al/sgBhs8Rv5u2u3F23+ngR4CvR
NmWasDHvU/24mA2CDilwQAKM7SZDzqls/524VPLWfaht+aQgJe7L+hqZxys3be3t
c91sitKVDkTNhjvvgNsM/qj16zScthMMdfM+J2NyXtoqsxmwDOyXGC0/mAr+G9ne
jHQrs1HECwtzwZB5u1AA0CJvfr6VGchikfZAO5IwbKtEQHTZJ7UxG9mEm2aKadcG
n8tfcMFCqVYecOPzBPBQqJ3VCIVgm9MSR036Gwli6+q4aW0j//u1rm+WZ1LK6Xdn
GtsITFFu98DjIhXym+m05SLgnHkbng+MAhJObkLWecvnAuO19abqjVgfEqLsWoqS
iidWg+LGJIO0Nr5xTge+CJRV5SbOyxbLfyXWGTYl8swx/dibZhAiKzPZbUc3B+tg
ZRmUrJlAUksYJpKdBw9WsxO0wIiWJvyh3jx37+ko9oSwPzoT4p04qow5BqbTlJxV
yLBC9VHPxB3qmMl6XUVyU4Aq5VFUg6LmDdEMtlEn3NpztC5qzqvUEvqmeUxlMUor
SB6koU6WBhfUMQHb2jaQFZJFDj4GiGKReeB6PFtDdpCJAZq7G/5v/0YhOmuCP2ZH
pYTLTSkmn5pjGv+Bvodh8bhi1HyuoRYtYuRVh55qlojS69FKFe8=
=mbW0
-----END PGP SIGNATURE-----

--------------QSPJWovA0y6oDfeZ7eJD1EPf--

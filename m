Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3BF4A6981D1
	for <lists+linux-man@lfdr.de>; Wed, 15 Feb 2023 18:21:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229508AbjBORVS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Feb 2023 12:21:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229784AbjBORVR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Feb 2023 12:21:17 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B240B38643
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 09:21:13 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id f23-20020a05600c491700b003dff4480a17so2722344wmp.1
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 09:21:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GtLn9rrvAkjLZ9Jb/qip6OoeBrQAe50hRAUbgDDKOn4=;
        b=B9tCdCN2nJqP9Rk1a/hc2cuFC9wlm+6/DxqeHXd0KJ74ErsZs3zPlX7wWaco6MU5pI
         5/9zF/fcyqWYSxnBRKMKX/b46yYY/2gsdUSB9a/oDky2mWok++4o0hhxjeEEBA/w5wII
         0uyoBBK+2Qs7/wf6Fh84Yz8jyeTGNRRt0kYv1OAEC5nHO+2ydx4CeuKsUDd+K1Sop0+5
         1Sa50PABBbrGjq3bYDgVmoAkayIYCbpFSMJeP4l2gClHXe2+wIyImFcWFx5puGNEPmof
         p8gnQkW9yq/xHwbr05Ak7p6lVSh0iDRMBP32PsuxfvLideY6LDf8yhc4sSKNWL841DJd
         hINg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GtLn9rrvAkjLZ9Jb/qip6OoeBrQAe50hRAUbgDDKOn4=;
        b=AT7eOeLi0qX4kDTx/wmPY7us06YEtnhzzMoXwS1zhGaDajwWTUIIEVr5uskIlbD7L+
         jWTn3IuSaYt1ZPZGuOqbF9KO3570TfnTnNphTzyFD5YZciUSfDlFXanFQYrEke8AKuGm
         wFRZ2aSwfNMWAXp270vSygGTZYCN4sDPcLukdSnOBLCi/3lIQAi6OJNwrmvGgnK9j92o
         wSeysq8wcNSvRiEBiBMaMLwEjDYzLUCzurMH47KnkuA6SFemB+Cvy+wdj4VEsXNONwoS
         bBqLmbxADdRGc2K5631BHGcro9PT7neiNF8Y6VEGHaUiuRzkn+u+ZO26++FW/6+b18I9
         Lr/A==
X-Gm-Message-State: AO0yUKUnXf4+LjAXstYRXtfpoJ4ZlBIJPdmgyQuyHdU61J5p2mBlRRxo
        9ou96PT4g2Nv/nfYeFN0mXE=
X-Google-Smtp-Source: AK7set9xMaj0Bd7MbErQE1lhM+++l9jy8rdzTQX58qZtugh/CjfUQzxjNJglRa6n5f0dWoa6ybHX3Q==
X-Received: by 2002:a05:600c:a292:b0:3dc:1f90:35b with SMTP id hu18-20020a05600ca29200b003dc1f90035bmr2963024wmb.34.1676481672233;
        Wed, 15 Feb 2023 09:21:12 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id k17-20020a7bc411000000b003db0ad636d1sm2546122wmi.28.2023.02.15.09.21.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Feb 2023 09:21:11 -0800 (PST)
Message-ID: <2d8c77b3-ba32-1494-037b-ad609e1c263a@gmail.com>
Date:   Wed, 15 Feb 2023 18:21:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: %z and %Z in strftime man page require clarification
Content-Language: en-US
To:     enh <enh@google.com>, Almaz Mingaleev <mingaleev@google.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Paul Eggert <eggert@cs.ucla.edu>
References: <CAJ0cOr-v1GDCqsU86w-rZVvejtppOAW56FxApFPnfPwRmAd47w@mail.gmail.com>
 <CAJ0cOr-x+hg5cH_wHH+uJ4co69qYZN425d-nFdoqFtuM79Kxzg@mail.gmail.com>
 <CAJgzZooiJVgKDH9KkW_FKZJThDVLJjqGLQ3RB1NnHVQVbA-QjQ@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAJgzZooiJVgKDH9KkW_FKZJThDVLJjqGLQ3RB1NnHVQVbA-QjQ@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------OsDT1CpjEjoE1FBMLDGcuwwD"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------OsDT1CpjEjoE1FBMLDGcuwwD
Content-Type: multipart/mixed; boundary="------------7TwuIQWodrHnjYoIeZe1XTsZ";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: enh <enh@google.com>, Almaz Mingaleev <mingaleev@google.com>
Cc: mtk.manpages@gmail.com, linux-man@vger.kernel.org,
 Paul Eggert <eggert@cs.ucla.edu>
Message-ID: <2d8c77b3-ba32-1494-037b-ad609e1c263a@gmail.com>
Subject: Re: %z and %Z in strftime man page require clarification
References: <CAJ0cOr-v1GDCqsU86w-rZVvejtppOAW56FxApFPnfPwRmAd47w@mail.gmail.com>
 <CAJ0cOr-x+hg5cH_wHH+uJ4co69qYZN425d-nFdoqFtuM79Kxzg@mail.gmail.com>
 <CAJgzZooiJVgKDH9KkW_FKZJThDVLJjqGLQ3RB1NnHVQVbA-QjQ@mail.gmail.com>
In-Reply-To: <CAJgzZooiJVgKDH9KkW_FKZJThDVLJjqGLQ3RB1NnHVQVbA-QjQ@mail.gmail.com>

--------------7TwuIQWodrHnjYoIeZe1XTsZ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Elliott, Almaz,

On 2/13/23 17:31, enh wrote:
> (given how complex a topic this is -- based on the discussion on the
> tz mailing list -- you might want to send a specific suggestion in the
> form of a patch...)

Thanks, I agree.  This is too complex, and it would be nice to
see a more specific suggestion in the form of a patch.
I CCed Paul, in case he can help.

Cheers,

Alex

>=20
> On Mon, Feb 13, 2023 at 1:15 AM Almaz Mingaleev <mingaleev@google.com> =
wrote:
>>
>> Friendly ping.
>>
>>
>> On Thu, 28 Jul 2022 at 09:16, Almaz Mingaleev <mingaleev@google.com> w=
rote:
>>>
>>> Hi Michael,
>>> Current strftime specification in C language standard is not accurate=
=2E
>>> It tells that tm_isdst is enough to find out time zone's offset. But
>>> that's not true, for example Europe/Lisbon has changed [0] its
>>> standard offset from 00:00 to 01:00 and back to 00:00, so an exact
>>> date is needed to answer that.
>>>
>>> To get correct answer with the current glibc tm struct should either
>>> come from localtime or there should be a mktime call prior to
>>> strftime. You can find a repro example and discussion here [1]. Paul
>>> Eggert has proposed a fix to C standard [2].
>>>
>>> Should man pages reflect that i.e. mention that there should be
>>> localtime/mktime calls for %z and %Z?
>>>
>>> Thanks,
>>> Almaz
>>>
>>> P.S. I am resending the email. My previous attempt was bounced back a=
s
>>> it wasn't TEXT/PLAIN.
>>>
>>> [0] https://github.com/eggert/tz/blob/a249a0c64b2f87a24c7f1aab43056fb=
597c95b96/europe#L2400
>>> [1] https://mm.icann.org/pipermail/tz/2022-July/031668.html
>>> [2] https://mm.icann.org/pipermail/tz/2022-July/031674.html

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------7TwuIQWodrHnjYoIeZe1XTsZ--

--------------OsDT1CpjEjoE1FBMLDGcuwwD
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIyBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPtFIYACgkQnowa+77/
2zKn2g/4qqIMVaEGqvWwjyVTmZ+NhP6cYJNeQ5SiTD9+SNfvgFyUmIk/UoZzXliS
wzNT4xLUNfsghKSN1yN8KKX10SY1olwHjwkHLcXXPXCQjhjvBc7budGmG9EikD/V
ncKjqlqEu6MVs1wCSZ8WqtptOQnvVsOPMAOTEgafqkKx5GwPc03VlNHH356ZFR7Z
Kqpy64/ET5tZ833xx1dzWRKg5vdsl7/MeAYKw9Jvx6A6de5BdLPk9QT0zX+8NZux
6IuP39tMXWLps3pKl8qRrPolb9Hp4BIkuXUXlzl+fXYxa4pbyqioAfMBc35RXmsB
wHveIbqnWITm5T1P9JCu4zZuXW43aq6prHRWKmLLnogfVqdnNSgHb1bNTpO55sMK
BZ2BC6A98+InZTvJn4+PfngxvzU/WQGb5lqmEmjrCyOyGkHQ0XQZ6Gd1iHiCYcfc
MYK8dKFvEWX4R2bBkjAmCcEWNUGW+IDWQAr26MEwHjMmXQw2pYqICLlPmqZ7axgE
q2oNuRKj/E25bH9D//9xRC4+fVqLY27xejUdwf0Rbl0StjsoWU//c5HBjCb1w9ND
0nUupTsPfEmY13Yvo7Ft025UyfAnXkHfAAGAAmI+2L/XguAkVDWTX5HfBcIv/hzV
hQpLEbKqL9bVYqWr3uU79AJuqiidPPfh8WZpQ2XxqC+e3c/eQw==
=B2QP
-----END PGP SIGNATURE-----

--------------OsDT1CpjEjoE1FBMLDGcuwwD--

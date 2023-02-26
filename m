Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66FBF6A34C8
	for <lists+linux-man@lfdr.de>; Sun, 26 Feb 2023 23:42:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229550AbjBZWmq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 26 Feb 2023 17:42:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229501AbjBZWmp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 26 Feb 2023 17:42:45 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93090F96B
        for <linux-man@vger.kernel.org>; Sun, 26 Feb 2023 14:42:44 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id t15so4393884wrz.7
        for <linux-man@vger.kernel.org>; Sun, 26 Feb 2023 14:42:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dMaHlcOn0fSy8mllJtt/bSiE8zGcZG+5wvjja1R7iyI=;
        b=ZTV9QcKgZr1xzc16zxwGR09TJlW/l2lxrz5Q7s9WPcHjMDkDGFiADbzYoQzQo6iEaH
         33tUhaFYdOKl+k5KK7XNCTs7xF8fLIXaSALkkkbIdvoYoXr9o+0vDfU6Yz7evW0Uau6c
         W9JsVV3+6FJt5kOBoj+CyV7Y6qYaZnTUgZx1/a6IKx+CDOH1I6nc0UFBS6inEoiA6Pjm
         gM/AiUpMqBoRd12nxI0Xn4pUCEdDuinqkYr0GDvwpyvh3mT10qelouFFayeBFogiLL7K
         zvyic/pzfr+fv2ZU0SckAiEkjg09xp52mS5ZS7k7favPDDrIxTjLF14PcJKiB/w+cEC/
         Ek+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dMaHlcOn0fSy8mllJtt/bSiE8zGcZG+5wvjja1R7iyI=;
        b=HiZRypmZl7Uw30fVuuOJyRp+NQFg9k+V73Rtunb8hLi1zdufMiSfyK3yvUY2IKVSpa
         IOXehSlkvfIHqY3GlIW8M94kv3k5vZAYvsTyZG3TgdB7oCHHyqqYBOA9TMe7S17ML49e
         o/fQQ/T0Nv9grK0u+b/IAippsQ4qzMKYps4X2Ux1VF4jVQkRcyRCUWSuEks7xPt/xT93
         U29QRG4yV6s/OVJ74euyT/zo6rCUcC+abQwwoZfcofwwlwaxzH7ItZXagJHLbWdMLVKl
         WeqgDMAK9AD57q2Ay1H4jQyG+qEJhnuw93skc53FapBibUnZvSFBIo49Qf9CEef8P5vO
         8hWg==
X-Gm-Message-State: AO0yUKVodIHXAg3JpxwmO5KgEde7ZoGMiWFNcfTZ8n31D8qKLiTLQqYs
        s3LiHHEdAncJ6EOeq86PRUo=
X-Google-Smtp-Source: AK7set/m9h6r35VvSapZRLdGFhe1BzyofahNyECP6mcmSEtPlXLb3VvtszIA7nlMSKBXXyhALOEdSQ==
X-Received: by 2002:a05:6000:1866:b0:2c3:be89:7c2a with SMTP id d6-20020a056000186600b002c3be897c2amr6268320wri.13.1677451362954;
        Sun, 26 Feb 2023 14:42:42 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m9-20020a05600c4f4900b003dec22de1b1sm7528360wmq.10.2023.02.26.14.42.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Feb 2023 14:42:42 -0800 (PST)
Message-ID: <b3bc1c74-3e70-3a66-9439-8b8062253d0d@gmail.com>
Date:   Sun, 26 Feb 2023 23:42:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
Content-Language: en-US
To:     =?UTF-8?B?zqbPjs+EzrfPgiDOks6xzrvOsc+DzrnOrM60zrfPgg==?= 
        <fvalasiad@gmail.com>, "Dmitry V . Levin" <ldv@strace.io>
Cc:     linux-man@vger.kernel.org, lineprinter0@gmail.com
References: <20230225105601.6079-1-fvalasiad@gmail.com>
 <63d2e471-b167-77a6-b713-5f76ff63fb96@gmail.com>
 <20230226220359.GA3440@altlinux.org>
 <fe116e4b-087c-5271-9ccf-0422f419235e@gmail.com>
 <ec92d3b0-f168-cd98-89ed-b264638a1c53@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ec92d3b0-f168-cd98-89ed-b264638a1c53@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0GIxfukDtDe0031VUwe1ZiAh"
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
--------------0GIxfukDtDe0031VUwe1ZiAh
Content-Type: multipart/mixed; boundary="------------vMmwcfHY15uwmEFvqTfX5v4f";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?zqbPjs+EzrfPgiDOks6xzrvOsc+DzrnOrM60zrfPgg==?=
 <fvalasiad@gmail.com>, "Dmitry V . Levin" <ldv@strace.io>
Cc: linux-man@vger.kernel.org, lineprinter0@gmail.com
Message-ID: <b3bc1c74-3e70-3a66-9439-8b8062253d0d@gmail.com>
Subject: Re: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
References: <20230225105601.6079-1-fvalasiad@gmail.com>
 <63d2e471-b167-77a6-b713-5f76ff63fb96@gmail.com>
 <20230226220359.GA3440@altlinux.org>
 <fe116e4b-087c-5271-9ccf-0422f419235e@gmail.com>
 <ec92d3b0-f168-cd98-89ed-b264638a1c53@gmail.com>
In-Reply-To: <ec92d3b0-f168-cd98-89ed-b264638a1c53@gmail.com>

--------------vMmwcfHY15uwmEFvqTfX5v4f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi =CE=A6=CF=8E=CF=84=CE=B7=CF=82,

On 2/26/23 23:14, =CE=A6=CF=8E=CF=84=CE=B7=CF=82 =CE=92=CE=B1=CE=BB=CE=B1=
=CF=83=CE=B9=CE=AC=CE=B4=CE=B7=CF=82 wrote:
> Ahhhh hello everyone! Give me 20 minutes and I will make the changes as=
=20
> requested!
>=20
> By the way this patch is the very first patch I do through emails! I am=
=20
> using git format-patch and git send-email, is it okay for me to be=20
> opening a new thread for each change you request? Or should I send the =

> new patches in the same thread as responses?

It is good to keep them in the same thread,
which you can do with --in-reply-to=3D in git-format-patch(1).
In that case, I usually make it a reply of the previous patch
(not replies to it), or of the cover letter for patch sets.

That makes it easy for someone in the future to find stuff in
the mailing list.  For me right now it's not so much of a
problem, and I usually don't even check if someone made it a
reply or not; it's just a matter of how useful it will be in
the future (for insignificant patches I just send new threads).

>=20
> Is there a universal standard or is it per project? Any guidance shall =

> be greatly appreciated!

I'd say there's no standards, but if you reply to the old thread
by default, it will be better than starting a new thread.  I can't
imagine why some project would want to avoid that.  It's more work
on your side though, so for small patches that just fix a typo,
you may not want to do it.

>=20
> Thanks!

Cheers,

Alex

>=20
> -- fvalasiad --

P.S.:  If you want to sign the patch with your name in non-Latin]
letters (is that Greek?), that's fine by me.  Whatever you prefer.  ;)

>=20
> On 27/2/23 00:05, Alejandro Colomar wrote:
>> Hi Dmitry,
>>
>> On 2/26/23 23:03, Dmitry V . Levin wrote:
>>> On Sun, Feb 26, 2023 at 10:58:02PM +0100, Alejandro Colomar wrote:
>>> [...]
>>>>> +.B PTRACE_GET_SYSCALL_INFO
>>>>> +is limited to type
>>>>> +.B PTRACE_SYSCALL_INFO_NONE
>>>>> +unless
>>>>> +.B PTRACE_O_TRACESYSGOOD
>>>>> +option is set before the corresponding ptrace stop has occurred.
>>>> You should say
>>>> .BR ptrace ()
>>>> right?
>>>> Or is unformatted ptrace common in this page?
>>> Or just say "syscall stop".
>> Sure, that would work.  BTW, se prefer system call over syscall
>> (there's not much consistency regarding that, but let's try to achieve=
 it).
>>
>> Thanks,
>>
>> Alex
>>
>>>

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------vMmwcfHY15uwmEFvqTfX5v4f--

--------------0GIxfukDtDe0031VUwe1ZiAh
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmP74FsACgkQnowa+77/
2zIzZw//U5TxoFEHc3qmph4NV5cWJMM9Y8zb46MdFVRXe/jLFKHsGxoEu6ZnLeIC
y1ZBVn0Ss8cXR7I0j/5S2GacBE58/2Q1z/Z32yqgZ0WpDCVxKFKOdYpSxNthtp/r
PFIUMnZY7PdFVxvekUqM+g4oGkgYnnT5EAT1FvK5pSgcjnRMNDtqigXQBN7QKI+j
a2fzLuqvtl3RzSsJ1SBwHK6HExTYnlBSTT7mhrCub9RuZ2+GHYBc/aHCJnCwIlCp
zE6o2+uW2jQV8MB3yVzBi5RmMJgbr7H4U4K1crcpTIBFPSjpTiY+EnSiCbm/1Twt
Epn5dLftZqLFUG7Aeffhva+acYNxzkpr8rUAq/Qthyo3wv3HqyKm7Fkc/ifl7UOh
BIJ45/4CgqACFAzrO1gYEVUEJ0NaooZ8egSJYq2iHpK6Dqc6zJoh06yUzn5yVsav
hJOhJUAeA5CPyrKT9TbRUQPL7rK9GFbmluJuJq1/z8DALdIQsaNbJDQXfxUMZv8U
NJusUkSOgh2rnKhT8FdTRWENy9WURSQRFNC4yJhfWTzERDMdFDuwLDc6qvG6c4oJ
u4a/2CvMmflUnpODz1ldP9ePWEw5Hs0d/f0b5XuNVJVwBn0JiMMz0JtEzT59S2SU
U2E1NtUYlCZOkx4qSYUrWCqGF4sAP5CMqRPhglpu5UBE/kdsCQk=
=HEUY
-----END PGP SIGNATURE-----

--------------0GIxfukDtDe0031VUwe1ZiAh--

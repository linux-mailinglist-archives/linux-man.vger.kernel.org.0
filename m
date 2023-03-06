Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B7986ABF90
	for <lists+linux-man@lfdr.de>; Mon,  6 Mar 2023 13:33:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229528AbjCFMdu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Mar 2023 07:33:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229656AbjCFMdu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Mar 2023 07:33:50 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C66E91B2C8
        for <linux-man@vger.kernel.org>; Mon,  6 Mar 2023 04:33:48 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id c18so5530672wmr.3
        for <linux-man@vger.kernel.org>; Mon, 06 Mar 2023 04:33:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678106027;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5T4/wnF4Rh7DV/6oE8yeQTYQE0+5B/iM5+Pi4y5tNWg=;
        b=WnLu3RxcA2SsY4VFxFMUqkpuODQ6XUVzwlbuGu+jBVIDJx/K9PptLAzogJ4B30eclC
         vjaAa75AojNIn7kv50qBPnFa9jy6Aapr8JbIMLZeT6phxw7bfjZnwNlg+fRiaFRCx62I
         6rYJkfbXghnB5JXMSlv8AR82pGs9KVLsK7b8HHNJdYzaOPWYT5rrGQpLDyk05it8SaMg
         /Br54NDz2N3zHNLJbPQHewUKmrh3g7jxP0ebZXnF3nZpsUUKxzBAD4OdSI4whNWkOIf/
         vXRrqgpgk2nJkwUGXcbnaM7deRNQKs1RjgUu4SgEVc7R7Ui5fpUEmvBg0zTdPdwqaILs
         3eNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678106027;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5T4/wnF4Rh7DV/6oE8yeQTYQE0+5B/iM5+Pi4y5tNWg=;
        b=m23JqKMN4G9+y4P3Dhg8X7au+5i/LOcTInMW1gmtyXNxIuZ76W4WxrcKV8FcsK2tIm
         1Kt/QVc10yIT5pCcobkYtSJESpWjaTB/EzfGB1s+kqrLrCYeun6DIY0IN4G58LMTnjRd
         WU5tRU6HIXWThO/otM8o+pEwx8NWyTVjMLRZr66wlcpqXxy26l2gh4Hl1KYKFFDoPx6a
         uGWnmftYTm05hJdq3JPZGfF/a9AMl/61X5dobjWheJoKjkDa3LK1YcLoop0uqVxkDIlW
         24GvIpig7d5BRPajx1YUyKOQti8FjxssjG+GssQbf0q7Rb2XFwhZt+QjoFN14x+VpMTZ
         Nejw==
X-Gm-Message-State: AO0yUKVxVbU7MyeS089C6+NIiyCObYUM+a+JOqvpK08Eq9MLT/D9VxmF
        l3FQcJRk6fA2lo/X2Cqf4YY=
X-Google-Smtp-Source: AK7set+N2bHmPQeBHskfHet60OgeLnNFHPlipP2joxjPuxdIMlW46Y/O2QuOrpzPvIovQwQl+LBeug==
X-Received: by 2002:a05:600c:4f88:b0:3e2:66b:e90e with SMTP id n8-20020a05600c4f8800b003e2066be90emr9448032wmq.10.1678106027313;
        Mon, 06 Mar 2023 04:33:47 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id b3-20020a5d40c3000000b002ce37d2464csm6124922wrq.83.2023.03.06.04.33.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Mar 2023 04:33:47 -0800 (PST)
Message-ID: <192c38ba-efd8-144d-30a2-c81c0eff78bf@gmail.com>
Date:   Mon, 6 Mar 2023 13:33:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 2/2] landlock.7: Document Landlock ABI v3 (file
 truncation; kernel 6.2)
Content-Language: en-US
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>
Cc:     =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
        linux-man@vger.kernel.org
References: <20230228205224.5991-1-gnoack3000@gmail.com>
 <20230228205224.5991-2-gnoack3000@gmail.com>
 <0aafcdd6-4ac7-8501-c607-9a24a98597d7@gmail.com>
 <20230302.2f7c767e1b94@gnoack.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230302.2f7c767e1b94@gnoack.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------wB8IfeHI0U9iLEPzleMFTSji"
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
--------------wB8IfeHI0U9iLEPzleMFTSji
Content-Type: multipart/mixed; boundary="------------lrbaXB65NWV70EKd9v9ytOBU";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>
Cc: =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
 linux-man@vger.kernel.org
Message-ID: <192c38ba-efd8-144d-30a2-c81c0eff78bf@gmail.com>
Subject: Re: [PATCH v2 2/2] landlock.7: Document Landlock ABI v3 (file
 truncation; kernel 6.2)
References: <20230228205224.5991-1-gnoack3000@gmail.com>
 <20230228205224.5991-2-gnoack3000@gmail.com>
 <0aafcdd6-4ac7-8501-c607-9a24a98597d7@gmail.com>
 <20230302.2f7c767e1b94@gnoack.org>
In-Reply-To: <20230302.2f7c767e1b94@gnoack.org>

--------------lrbaXB65NWV70EKd9v9ytOBU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 3/2/23 14:42, G=C3=BCnther Noack wrote:
> Hello Alex!

Hello G=C3=BCnther!

>=20
> On Wed, Mar 01, 2023 at 10:21:13PM +0100, Alejandro Colomar wrote:
>> In the subject it's not so important, but for consistency with the
>> language used within the pages, I'd ask you to rewrite it as Linux 6.2=

>> (and similarly for patch 1/2).
>=20
> Done, sure thing.
>=20
>=20
>> On 2/28/23 21:52, G=C3=BCnther Noack wrote:
>>> diff --git a/man7/landlock.7 b/man7/landlock.7
>>> index f70a01484..9ddb17ae8 100644
>>> --- a/man7/landlock.7
>>> +++ b/man7/landlock.7
>>> +Note that you might additionally need the
>>
>> "Note that" is usually redundant.
>> See:
>> <https://lore.kernel.org/linux-man/20210729223535.qvyomfqvvahzmu5w@loc=
alhost.localdomain/>
>> <https://lore.kernel.org/linux-man/20230105225235.6cjtz6orjzxzvo6v@ill=
ithid/>
>=20
> Thank you, that is a good observation, the "Kemper notectomy".
> This is very helpful, exactly the kind of review I was hoping for. :)

:)

>=20
> How about this rewording:
>=20
>   LANDLOCK_ACCESS_FS_WRITE
>=20
>     Open a file with write access.
>=20
>     When opening files for writing, you will often additionally need
>     the LANDLOCK_ACCESS_FS_TRUNCATE right.  In many cases, these
>     system calls truncate existing files when overwriting them (e.g.
>     creat(2)).

Sounds good.

>=20
> This paragraph started with "note that" because it talks about an
> unintuitive side-aspect of the LANDLOCK_ACCESS_FS_WRITE_FILE right.
>=20
> I reworded it to make it more clear why that should be relevant to the
> reader (because creat(2) and its open(2) equivalent are used very
> commonly).
>=20
> Does that sound better?
>=20
> The man page also explains it in more detail in the "Truncating files"
> section further below.
>=20
>=20
>>> +system call, this can also be done through
>>> +.BR open (2)
>>> +with the flags
>>> +.BR "O_RDONLY | O_TRUNC" .
>>
>> Expressions should go in italics.  See man-pages(7):
>>
>>        Expressions, if not written on a separate indented line, should=

>>        be  specified in italics.  Again, the use of nonbreaking spaces=

>>        may be appropriate if the expression  is  inlined  with  normal=

>>        text.
>=20
> Done.
>=20
> Thank you for the review!
> =E2=80=93G=C3=BCnther

Cheers,

Alex


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------lrbaXB65NWV70EKd9v9ytOBU--

--------------wB8IfeHI0U9iLEPzleMFTSji
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQF3akACgkQnowa+77/
2zIwzA//Up0hSJjcjc+khd4R/pjkRL9v3lcWtpkC5TAXvOVXl3ZOt6j9SzqFcpfP
zT0uhWn0HR3gu+CO1TEfRIV7VdYCP7qg3VK6l+cVK313UaQbd88JNDUlFo9GYduE
/4o6MCGHTYpnhV/junrQJu2232TO9isZ3qfY3KqX9OZPY0d8tkrYRLdUDI4LfA9q
o4LoTn4QFFo5LBuXgqFuIJUuwpP3dCfj3rgEJe9CKHps6bkPvnoUf86ub4guxaD2
JmqTLNbFBYIYy1VcqkHGihyBJRy7vEUFCOMo+MVovWR0gNy3fPBvtty6/QktIKid
p1Z6r/vVykcYirsJr4RITBJFCjSbpdtWXouNlhMh2Cdnrq6sgsCHkWVZSFlrM4GV
EUpGM95Qy/FZbIwfPbzOMDqFbMgCvACanhJF6Cvp2F0BJSEmTkFeNLw5MEYBS8Vm
RIZKy2PHP40ULizGipJfH9JD/FmJqrMF2GKoqJS9yiKQbn3G5tVyGi6ziF0WdsW/
UC65fiUUXImkDAGKREUuBy/RQkKIMsacWu2yy21A8DL6Zc51FBS7jVcserYBtvVj
h2yalDP2AaOueatS0kco6kZIdBgjRh87mzOavzzAP0Ql+8RGFsF+q/zy3vIfvWR+
cagtUd2or4MZZ+A62wxV+P6XAVP3bgXU5AfzOUIQITcwXdqCaVY=
=G98o
-----END PGP SIGNATURE-----

--------------wB8IfeHI0U9iLEPzleMFTSji--

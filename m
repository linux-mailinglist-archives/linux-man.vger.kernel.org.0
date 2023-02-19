Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D3D1369C29E
	for <lists+linux-man@lfdr.de>; Sun, 19 Feb 2023 22:12:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231466AbjBSVMT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Feb 2023 16:12:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231207AbjBSVMS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Feb 2023 16:12:18 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86E0C1968E
        for <linux-man@vger.kernel.org>; Sun, 19 Feb 2023 13:12:17 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id bg25-20020a05600c3c9900b003e21af96703so621610wmb.2
        for <linux-man@vger.kernel.org>; Sun, 19 Feb 2023 13:12:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p1RkyV9cwoQdtzU1khGMp9enaf5vhd99XNML1sMngJk=;
        b=TZDZOuxoWz/FRI87N1qtuZkDBOzv+1UIGH8iDeGKTdKfzkiqpXk0qeYWRaqGdicB1X
         GK+L0IcbjmEPIUn8vA0gk7lWh71r98O9yimcso4bxPziVZblk4jZS4v+NIcbcqeRSmND
         BlunuVZboxNkQ0+23sGUtQC//JIsjdzzepuTEKw7VWW8U0DJCBo0B7F5MVCoVfqaXNH1
         Ee0VuiGwcHxeCll6IlI6GdC+0fmgEWpJH0g46jqF3G54jaizCVDhexLbpvhRJZZFo2VN
         8sHgUyn27Dh/I+YdMJpJb7ANZ3MesA2jpEKjIEOJqzZmV4HIwrq+tc58vCK1d+3svDSn
         Vm7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=p1RkyV9cwoQdtzU1khGMp9enaf5vhd99XNML1sMngJk=;
        b=K0GXEdLjPOVGlHFpSZ8PLFkU1ZCL9qA16j2n262iqYe15AdDHzcs1lgmUldwdrJJ0c
         JMDzrpBep3jtTccB//ZvHXYHGMyAK0cY+rYXLD6VnxX3N9G9rxdz53okXbJK/LKrRxIw
         sq1fC19U41eR8I0g3gZDCBiIYMR21ZF7Xg89SCArwz12WXkEAK+ClF5dyVFwIA0mk8Hw
         d4XLz/4ekZVTme/OVUmfNq9/5NlJtRgmB31WDaVMgV6y7m11nMGoxh/WRhEg+LxnufzX
         H1j9busszhIUfWZ6rhqDjJhRfeXnZ+wMQlJfQp0U0TkYUz2SkNRc6jjmbXXHl533wpAh
         DSOQ==
X-Gm-Message-State: AO0yUKX28fd2imVQ5K7pcO5zVOneUi5VRZ65ygCA8HXDdpux9psYAoL6
        5QGMlxnYnwSoj0XhdU8g8U4=
X-Google-Smtp-Source: AK7set/fVaXGMuusxkhj5OFCiYxb2Jk2Ds9HKryIaxOYS53HVEwOwf5rF3G8tLaj9skJkM9KhbqB8g==
X-Received: by 2002:a05:600c:181d:b0:3e2:2504:50e3 with SMTP id n29-20020a05600c181d00b003e2250450e3mr6150098wmp.25.1676841135848;
        Sun, 19 Feb 2023 13:12:15 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n21-20020a1c7215000000b003df7b40f99fsm6725248wmc.11.2023.02.19.13.12.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Feb 2023 13:12:15 -0800 (PST)
Message-ID: <66ebd08f-af1e-c8fd-cb95-4fef6948258d@gmail.com>
Date:   Sun, 19 Feb 2023 22:12:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3 1/6] man2/: use IEC or ISO multiples to clarify long
 numeric digit strings
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Stefan Puiu <stefan.puiu@gmail.com>
Cc:     Brian Inglis <Brian.Inglis@shaw.ca>,
        Linux Man Pages <linux-man@vger.kernel.org>
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
 <4a3350ac873f45df96abf9045cfe1605839f490d.1676489381.git.Brian.Inglis@Shaw.ca>
 <CACKs7VB672Ka6GJQmVozS6n1kR+g8LoDuLtw1XuwSjKsttFBTg@mail.gmail.com>
 <cb47e19b-ba02-da3f-b253-ee8ddec28aa8@gmail.com>
 <CACKs7VDaAX=qZh9fhn9wa5L5c4xegF0q+ZDBbzE9KTY9pPN+mQ@mail.gmail.com>
 <ed3e2487-2b28-e205-b1aa-c65cb54843ce@gmail.com>
In-Reply-To: <ed3e2487-2b28-e205-b1aa-c65cb54843ce@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------8dQ3512Gr3i9JdMuEvi6Bcf0"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------8dQ3512Gr3i9JdMuEvi6Bcf0
Content-Type: multipart/mixed; boundary="------------o0tSBkWpgU7F2R0usGf0D5Wr";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Stefan Puiu <stefan.puiu@gmail.com>
Cc: Brian Inglis <Brian.Inglis@shaw.ca>,
 Linux Man Pages <linux-man@vger.kernel.org>
Message-ID: <66ebd08f-af1e-c8fd-cb95-4fef6948258d@gmail.com>
Subject: Re: [PATCH v3 1/6] man2/: use IEC or ISO multiples to clarify long
 numeric digit strings
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
 <4a3350ac873f45df96abf9045cfe1605839f490d.1676489381.git.Brian.Inglis@Shaw.ca>
 <CACKs7VB672Ka6GJQmVozS6n1kR+g8LoDuLtw1XuwSjKsttFBTg@mail.gmail.com>
 <cb47e19b-ba02-da3f-b253-ee8ddec28aa8@gmail.com>
 <CACKs7VDaAX=qZh9fhn9wa5L5c4xegF0q+ZDBbzE9KTY9pPN+mQ@mail.gmail.com>
 <ed3e2487-2b28-e205-b1aa-c65cb54843ce@gmail.com>
In-Reply-To: <ed3e2487-2b28-e205-b1aa-c65cb54843ce@gmail.com>

--------------o0tSBkWpgU7F2R0usGf0D5Wr
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 2/19/23 22:10, Alejandro Colomar wrote:
> Hi Stefan,
>=20
> On 2/17/23 15:05, Stefan Puiu wrote:
> [...]
>=20
>>>>> diff --git a/man2/add_key.2 b/man2/add_key.2
>>>>> index 56fc6d198d21..215de20baeae 100644
>>>>> --- a/man2/add_key.2
>>>>> +++ b/man2/add_key.2
>>>>> @@ -167,7 +167,7 @@ The size of the string (including the terminati=
ng null byte) specified in
>>>>>  .I type
>>>>>  or
>>>>>  .I description
>>>>> -exceeded the limit (32 bytes and 4096 bytes respectively).
>>>>> +exceeded the limit (32 bytes and 4Ki bytes respectively).
>>>>
>>>> For what it's worth, I find 4096 much clearer over 4Ki (what is Ki
>>>> anyway?). Ditto for 32768 / 32Ki etc. What are we trying to achieve?=

>>>
>>> In this case, we should rather use 4\ KiB, which is standard.
>>
>> Maybe it is standard, but why is 4 KiB better / more suitable than 409=
6?
>=20
> 4 KiB is not that much better than 4096, since 4096 is easy to read.
> For higher numbers such as 33554432, it becomes more important to use 3=
2 KiB.

I meant 32 MiB, of course :)

> For consistency, using 4 KiB seems reasonable.
>=20
> Cheers,
>=20
> Alex
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------o0tSBkWpgU7F2R0usGf0D5Wr--

--------------8dQ3512Gr3i9JdMuEvi6Bcf0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPykK4ACgkQnowa+77/
2zLrYQ/+I7JrnmcFrJfB5RSOdiFcgzo6uCrhE6qRhAXaNy7fd++wFyYQpuYj95nV
nN8nVvclGRR7VMs/Amh7aGewAVBR3in85BCfoCidUIlGK12odWfnZ8kH6xgUfFP9
rCTXXqILGks/nsQjIXhDpCs03ALyPD7HIk1hMfF4ciJ1IrMa7n77Ahkzly92GUtV
HFdZ3aNKnMoDJL4ClbzvUASRNt9blC85DWLY99/sjptX2V8MKMu4yU2GdbMDQkOE
yEo9f/38l9isWUzTGvptFNN/yxdjLqAadaXDLZozQjf8PeP/VuNKgLf9RJ2JTbxm
+IA5WBFHAzKjmx/DZKQ7JfkCxIKnimrR1eRpDF+px3OKleyGksdKc3ff17cb7xWc
VwcdlalkNoYa4QyFrBb2LXesYWFb+64PgjP27duMkuFQGar3shD2HgFRp8xXSA8b
+eEaf+qmpGRG7IqPid+vmxnQimXpfhEry9N8jx1pnO1JUXDTDg78ik7y0W7XoNya
T7KjFEzTHKAaQEWDqv+pJTC7aH24xZJ47oy9CnOTmFbJVlw7y3fYbLqBPekta30X
ve8/8wQCckFEVo28HQDlEvuLYYxPgBWaNvU2bE123DiwUjJ1+Ml6q3TEq46Qt15O
BmZIPCz+JvuOToAPmSl7xRj36LZXjB2rRSRmAOai8Yp92zedKzY=
=Caqk
-----END PGP SIGNATURE-----

--------------8dQ3512Gr3i9JdMuEvi6Bcf0--

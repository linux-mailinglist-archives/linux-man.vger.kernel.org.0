Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3BFA76D12A0
	for <lists+linux-man@lfdr.de>; Fri, 31 Mar 2023 00:54:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231318AbjC3WyA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 30 Mar 2023 18:54:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55622 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231319AbjC3Wxc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 30 Mar 2023 18:53:32 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3626A113DB
        for <linux-man@vger.kernel.org>; Thu, 30 Mar 2023 15:52:35 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id u11-20020a05600c19cb00b003edcc414997so12788002wmq.3
        for <linux-man@vger.kernel.org>; Thu, 30 Mar 2023 15:52:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680216753; x=1682808753;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XIx6kQOTy1CgG2qeVNBuRRU/MeDHumhbagt82zhDWxk=;
        b=qF64Y2vrDfyAtR0e1ivXMrmlK9dmjerKzZfnFcW+V4egTz7KF8KEnbt3x9scb0P/Iq
         L9XwbnMoZDQGoVO3fxzIh1sdzDiSKR8HND7lX38o4Pqn/VTP/vxmeHhNnqJJdTcNchHr
         9IxNtlj3HvgoRvXkdR24PwSpUMA1FA7eXtFk6cW/P+u3TPGdU/X1N73XVSG2m+SIlq9s
         PLCzDxT3nsYdhjx2zm1rAl3iOurWPWCUrrUNdz47x1B9g7gdHDD6VjFP8HVBfcOYqOje
         0fbNL+3H0UBx4XafgHRnxr7VONiVjn9D0hg5kZU1Bxxt7U0Dqh4Bqkge7hY2yhZk/Rix
         RhoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680216753; x=1682808753;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XIx6kQOTy1CgG2qeVNBuRRU/MeDHumhbagt82zhDWxk=;
        b=J4pHuTHChZkKUUYu86u1MrhNn6IoryXzPJmIf2aH9nsO/jQ07i8ljQPr1UDgXqX7BC
         7Mjsa7o1HdZSFZUJYGIODdrfCJUn3JclxsgLxhIbln7iIXPAptamPhtHdxou3ccIaPAa
         AA7azWhYbMaHC7K8J4d0+/NohVT1VN/2rcdLd403DuzaiABCsY0KBrnTXcGXne6oyY10
         nrmSSMJO+s+37VGBGfZHE+FwiHc/B1FsKPd9vWSqLDXNhD/KiE0g1TX65Y8Pvx7ZGOXT
         /Dr2+w/Kb/KJaNDeFK4a3Ai7gHw9UBvOYD19Tobpxg4zsu8A06+csTJVQEnucZTC/Htl
         2JYw==
X-Gm-Message-State: AO0yUKUxV6sRzttYYhdR/K7d5fuB9/OzgZfV5S3qaDA975PE/AJgANQD
        mHmCuwSLb0Wz+8kbtEytLjs=
X-Google-Smtp-Source: AK7set8Dt28ezdbw+cleJBZkHNLLYxX/6/bjUY2xITipcF5r0/7GPwKAPn5LK8XGYttNJstTveaGFQ==
X-Received: by 2002:a1c:4c19:0:b0:3ee:96f0:ea31 with SMTP id z25-20020a1c4c19000000b003ee96f0ea31mr18784595wmf.18.1680216753303;
        Thu, 30 Mar 2023 15:52:33 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id s17-20020a7bc391000000b003edef091b17sm570271wmj.37.2023.03.30.15.52.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 15:52:32 -0700 (PDT)
Message-ID: <7a4e4c9b-e135-a3bf-17fb-388efd0a341e@gmail.com>
Date:   Fri, 31 Mar 2023 00:52:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/2] ioctl_userfaultfd.2: add UFFD_FEATURE_EXACT_ADDRESS
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Nadav Amit <nadav.amit@gmail.com>, linux-man@vger.kernel.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Peter Xu <peterx@redhat.com>,
        David Hildenbrand <david@redhat.com>,
        Nadav Amit <namit@vmware.com>
References: <20220307184852.20351-1-namit@vmware.com>
 <5281de2a-08c2-e159-0e15-cf4225f4466b@gmail.com>
In-Reply-To: <5281de2a-08c2-e159-0e15-cf4225f4466b@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------2hQVKsRKUPI0o2v5nX1zZ5xE"
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
--------------2hQVKsRKUPI0o2v5nX1zZ5xE
Content-Type: multipart/mixed; boundary="------------EK0RStG45ZkFpGIBsgOynPTB";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Nadav Amit <nadav.amit@gmail.com>, linux-man@vger.kernel.org
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, Peter Xu <peterx@redhat.com>,
 David Hildenbrand <david@redhat.com>, Nadav Amit <namit@vmware.com>
Message-ID: <7a4e4c9b-e135-a3bf-17fb-388efd0a341e@gmail.com>
Subject: Re: [PATCH 1/2] ioctl_userfaultfd.2: add UFFD_FEATURE_EXACT_ADDRESS
References: <20220307184852.20351-1-namit@vmware.com>
 <5281de2a-08c2-e159-0e15-cf4225f4466b@gmail.com>
In-Reply-To: <5281de2a-08c2-e159-0e15-cf4225f4466b@gmail.com>

--------------EK0RStG45ZkFpGIBsgOynPTB
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Nadav,

On 3/14/22 13:23, Alejandro Colomar (man-pages) wrote:
> Hi Nadav,
>=20
> On 3/7/22 19:48, Nadav Amit wrote:
>> From: Nadav Amit <namit@vmware.com>
>>
>> Describe the new UFFD_FEATURE_EXACT_ADDRESS API feature.
>>
>> Signed-off-by: Nadav Amit <namit@vmware.com>
>> ---
>=20
> LGTM.  Please ping when it's added to Linus's tree,
> and add a comment with the commit message that added it.

I've checked that this was finally added to the kernel.  Should I apply
the patch as is, or is there anything that was changed?

Cheers,

Alex

>=20
> Thanks,
>=20
> Alex
>=20
>>  man2/ioctl_userfaultfd.2 | 8 ++++++++
>>  1 file changed, 8 insertions(+)
>>
>> diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
>> index 504f61d4b..94480158e 100644
>> --- a/man2/ioctl_userfaultfd.2
>> +++ b/man2/ioctl_userfaultfd.2
>> @@ -214,6 +214,14 @@ memory accesses to the regions registered with us=
erfaultfd.
>>  If this feature bit is set,
>>  .I uffd_msg.pagefault.feat.ptid
>>  will be set to the faulted thread ID for each page-fault message.
>> +.TP
>> +.BR UFFD_FEATURE_EXACT_ADDRESS " (since Linux 5.18)"
>> +If this feature bit is set,
>> +.I uffd_msg.pagefault.address
>> +will be set to the exact page-fault address that was reported by the =
hardware,
>> +and will not mask the offset within the page.
>> +Note that old Linux versions might indicate the exact address as well=
,
>> +even though the feature bit is not set.
>>  .PP
>>  The returned
>>  .I ioctls
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------EK0RStG45ZkFpGIBsgOynPTB--

--------------2hQVKsRKUPI0o2v5nX1zZ5xE
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQmEqgACgkQnowa+77/
2zLAFQ/9EkfaBcysvw2FYjZR9tzn64IyIMOxItSqb1BN9S9+n9GZ7Y+jpwPl17GD
jzty7/1s5xuDBTW0on4Lnti8GuSKMBc6qxyjMmPXlcEllAJzJtXJ8yK9i5d4t7QN
bI6gefEYxhOOPQO2tj8qu5IzqPbdAt1lVkuBmBy3eGqqnHK8edggs8HuGwfs1i28
RR/ANnhh23s92z1kJxs3GGJjV/kVCFWdtHnqwcZv7PcVlTU+va7SzWTY6JddG7EG
U3dMyKEt5AgM6APzir3Z+cOe7HY7yjUCnfdyMS/BQNio3rbVC7CXpdXVBs6IOJQ9
RBsRpA2wJzpvQ1N0GxQHm6NI1sMANbbZBMR+xEAit5jJAvAYkeLBHLb53bLw7IJT
PjaA5j4WskSm5kfdgOLH+ANAy82I+4yZNTIPfB2aD5foJ+qhFjlPQzYHqdrXbdsZ
0Gpf6zwSmgp2YxjKYneE5Xie1RvTFhMTgFKb1u135Tkzke5W1iKtyL/+E4LZlMwn
Zi79H2hmaQl5kKQV6KOOv0qWsYRhzS5TxidJlh+wdiXO8bCzszmadCdnsdea3tMl
M2PqccaFelXcf771Gl4o6miJE2Orf2B2jxbgTpbRJmo9RyXMiUNcbIbjPo6dEn2M
R9IoK+eXgZEr3YDnGIlqBn3UDyaeB+wVWaZq8SB1ESUzbG2CtvA=
=+iAu
-----END PGP SIGNATURE-----

--------------2hQVKsRKUPI0o2v5nX1zZ5xE--

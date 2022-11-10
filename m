Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C9B5624921
	for <lists+linux-man@lfdr.de>; Thu, 10 Nov 2022 19:11:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229591AbiKJSLI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Nov 2022 13:11:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231349AbiKJSLI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Nov 2022 13:11:08 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A20B24C277
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 10:11:04 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id ja4-20020a05600c556400b003cf6e77f89cso4629796wmb.0
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 10:11:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xDz52FsId+9/vIi/gdycMwN59Q7PliQVfhWNnaWmmoY=;
        b=pUIPyodQvS+6TFQnmq5YtRQvf40DK7iBaiYtO3Mp2grTQ3fsSEwax1WUIRdEHp7Gum
         wiYgBTjQLH0LcbW/kAJnGtr3ctdIuTDsWLDilNkRElCqnYfQA/b8hiFcO/iIjncz9nDv
         OAJrjvi9z+EvwtToep2MzHl2bErTJMT+6yzQvhMeINQ154IWFat5dKQ3ecCwy5zLuN4y
         7vFtmtJDRJoNTFUx941rYkxal9C6jkhzYW1HFaLmIVfxpE19ofcQ7spHCVlzoWjS7VeS
         szfhhxCt9NYeJ6/wZH8qIOv5t2Pa67p+TOUEnwTY3LcnK9nxPezT6q3+JmJcJofXA7lL
         MPiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xDz52FsId+9/vIi/gdycMwN59Q7PliQVfhWNnaWmmoY=;
        b=vXyvFlJxqPzIYK1fB/oxxjnXj9wv7RPsnZyMIbmvEnKgcr9+moNC/SpcXsBWEzLhrt
         jJPI2ave+5L+sVn93scRlhaRGZ+n6Ry0/CgkkIbz0zUHN9BbyvHUqkX+cq8kfDsQcM4c
         eGKsVlav8/IAQ489YX7fjDbnER08gS+Rdgo7jDcwMB0sAwb1EBHnH28cWddDEAWwU52t
         lOVXqoJ3ZQfRto8SJPUCz3PvAcxN6tUCfdmV9hu0s76U7ZT+v132zvPI62l5HA/W1ac8
         /GMpY9+51hktwAXJId8zEVhY9ICAoiI3/kKTx5H/WNHJDfr7MnDJmnY2t56usfxJNx8d
         W7eA==
X-Gm-Message-State: ACrzQf1mJMAcmNQheQ7CwuhEbVuPwkY9SvibBII6/ASgbORHF3ggmyUT
        eK9ZsrHZjvKRVenkPpe+1uQ=
X-Google-Smtp-Source: AMsMyM5cTzcHxMTMQ/YFoscX7IzE014Ix0CV4DNdn7pIGxoSOumHrC9LvJAbcp6f3jBXCbiV5WWGoA==
X-Received: by 2002:a05:600c:4fd5:b0:3cf:9e9b:68f5 with SMTP id o21-20020a05600c4fd500b003cf9e9b68f5mr19122827wmq.60.1668103863064;
        Thu, 10 Nov 2022 10:11:03 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n1-20020a5d4841000000b002366c3eefccsm16072961wrs.109.2022.11.10.10.11.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Nov 2022 10:11:02 -0800 (PST)
Message-ID: <a3159c9e-4ead-78f3-c1ca-e2144c3e882d@gmail.com>
Date:   Thu, 10 Nov 2022 19:11:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: MR macro 4th argument (was: [PATCH] Various pages: SYNOPSIS: Use
 VLA syntax in function parameters)
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        groff <groff@gnu.org>
Cc:     Ingo Schwarze <schwarze@usta.de>, linux-man@vger.kernel.org
References: <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <20221110094033.ptpfsqpvvx2yd5xs@illithid>
 <8cca79d4-f31d-1508-0775-cef54e3755c1@gmail.com>
 <01da77c7-fed2-0fc1-ae6a-770885057a27@gmail.com>
 <5e3a103d-2aff-511a-e819-96dafb640c24@gmail.com>
In-Reply-To: <5e3a103d-2aff-511a-e819-96dafb640c24@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------t8yiK9zIdph6qqcPLXZoftgs"
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
--------------t8yiK9zIdph6qqcPLXZoftgs
Content-Type: multipart/mixed; boundary="------------hP83DPc1OAkWL2PXZ33cQue9";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 groff <groff@gnu.org>
Cc: Ingo Schwarze <schwarze@usta.de>, linux-man@vger.kernel.org
Message-ID: <a3159c9e-4ead-78f3-c1ca-e2144c3e882d@gmail.com>
Subject: Re: MR macro 4th argument (was: [PATCH] Various pages: SYNOPSIS: Use
 VLA syntax in function parameters)
References: <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <20221110094033.ptpfsqpvvx2yd5xs@illithid>
 <8cca79d4-f31d-1508-0775-cef54e3755c1@gmail.com>
 <01da77c7-fed2-0fc1-ae6a-770885057a27@gmail.com>
 <5e3a103d-2aff-511a-e819-96dafb640c24@gmail.com>
In-Reply-To: <5e3a103d-2aff-511a-e819-96dafb640c24@gmail.com>

--------------hP83DPc1OAkWL2PXZ33cQue9
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KQW5vdGhlciBpbnRlcmVzdGluZyB0aGluZyBpcyB3aGF0IHRvIGRv
IGhlcmU6DQoNCiQgc2VkIC1uIDMxOSwzMjBwIG1hbjIvdGltZXJmZF9jcmVhdGUuMg0KLlRQ
DQouQlIgcG9sbCAiKDIpLCAiIHNlbGVjdCAiKDIpIChhbmQgc2ltaWxhcikiDQoNCg0KQ2Fu
IEkgaGF2ZSBtdWx0aXBsZSBpbnB1dCBsaW5lcyBhcyB0aGUgdGFnIGZvciBhIFRQPyAgSG93
IHRvIHB1dCAyIE1SIHJlZmVyZW5jZXMgDQppbiB0aGVyZT8NCg0KQ2hlZXJzLA0KDQpBbGV4
DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------hP83DPc1OAkWL2PXZ33cQue9--

--------------t8yiK9zIdph6qqcPLXZoftgs
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNtPrUACgkQnowa+77/
2zLtHQ//ZX6p3KJ7wZEGEEsjJtPt1CVbc9NeELNuLWo7oh1RXS44Lt5DCSAZY+zS
RJoIDFyM0DZpbwgrpciJCV0WyteOmY/mQDjbCYFYnOXOmF9xjcggMUksrteOg1Tk
774K3YIBfRvbni3xHaIF0gPhsI9bhYYJMnJlaIqXRYqO8gGSh+Q8LfPJReFVDl6S
RZtBCLzNeDpv7Q7XH22UWOrelZV4K4d7cpojGBEwRnKiQBLrHRctWfSpGc2R0dDU
oUg/N3hAnxXvd4LvDbBC8nkMNs/aGZukOq4NC9FIs0UqA/u+s5OaauqhaQEeW8hb
GpJC2BXAcSND74vXwqyH2ejkYFI6ddmfsamlab1CCxes5we+EN5OLFNpjkGzgecN
HWNGSLCF0lWZWR6lCvHSGkk1AJxFBcHq5QzLEOQDI37s04XZvbhFVUHTQ7mh7Brj
gFbM6eEn3zKrcMailo/8Vx6gNNPTGT5iES/CwJaeg7jRSPWz8N9DOFX9KC+bDCdX
PadSsAyCToHZCsBTBD8wyuhuctczqCkrfUb+xCDnV1UGM98L9YxPqiNkUazHAlXu
kRLq43A1l2gpGXlO2bWPtmQR853bdunT9M1r8G1hhoVb1VNNRygg8SnYMRInLTr6
uQwjj6jwRtpWWfPxjeWNte1ocKhIwQbY4xhYipV/aWOcN4AxHLk=
=hSV9
-----END PGP SIGNATURE-----

--------------t8yiK9zIdph6qqcPLXZoftgs--

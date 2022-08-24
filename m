Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B00FB5A04DB
	for <lists+linux-man@lfdr.de>; Thu, 25 Aug 2022 01:53:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229580AbiHXXxd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Aug 2022 19:53:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229490AbiHXXxc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Aug 2022 19:53:32 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E84C5EDC2
        for <linux-man@vger.kernel.org>; Wed, 24 Aug 2022 16:53:31 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id bq11so16018340wrb.12
        for <linux-man@vger.kernel.org>; Wed, 24 Aug 2022 16:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:from:to:content-language:user-agent:mime-version:date
         :message-id:from:to:cc;
        bh=3VbdeD4lSNNWOJU4wYHCAT7f7u7go2EOHm4/0jev3XQ=;
        b=cGfWuRbovRKiDQPsfB7p3BxqUvAASTJU5jgx3X6wL0sahSwDFS5Iz4OE22mNCvQ8KR
         3hds7gR2vq3WCFnNp9eMwJvUN0fPZvFqJsnDLitIj5T5Pq5fcDO6UJGSDHprxc4ZuR8D
         RF2n0xkPqvWzJZhfS18HhBaovHgslphiSxBtxaUr9fQju8aqRcju5ArUnyybQ/ckmV4q
         DZqWea4kjNq/w9m+LLOhZNtZZz7peQlT0iT+TW0ToIHq+NRav34MdxJVyHLR2Zd4bKQY
         8eVUVzVGuFRTFq2EK94y7V3J5NzVEzSRnrZaWtdPdUIOrvaRgGTGzQKOX4c+S/+bcHDb
         T3Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=subject:from:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc;
        bh=3VbdeD4lSNNWOJU4wYHCAT7f7u7go2EOHm4/0jev3XQ=;
        b=vBiEO7JZnE+uRpMWpntRasTbzIgMv8aHNLwYIr+vhYNYRyQhksAcQTm0zCFzmVAUMW
         zmfyvVrEEHD962K4W1ppXPdxzH/sAz8FYdT8njI5OI0AGGaWjq6FzcCBWPZ228D/KEHQ
         AkanSfCz4rRGl8eB+zssG0EGQeTKWaLh0UsG/OB23FWZ6b1uYPps9CZCktqt8+SV+edI
         MkOZO+X9YamD5Te3T23LyUS39n0jGpGy5mQBUznVvwNXbZPDIbrQaGx9IakAdcKQ5BJw
         aQJ5tfVGfDtl8spwwQ1xaZmavL+geLqpwExUPJEU0SxUnBncQuCPvO0B2fpHqLF325G+
         4pIA==
X-Gm-Message-State: ACgBeo3hJk5ILqTJwnNonNyuwGEF8cxptgl7OFxmJmoeVDcJiT5s5316
        ko/rClpMHsY6dbjCBLGjzw8/qKH0NBY=
X-Google-Smtp-Source: AA6agR5vwJtA5a9BESNDRkDxNdLsKnC8F+/EuppwARDZB06FgFWsiyzUZAZMFThdABRKqeVHc1u+kw==
X-Received: by 2002:a05:6000:887:b0:21e:24a0:f302 with SMTP id ca7-20020a056000088700b0021e24a0f302mr667120wrb.466.1661385209707;
        Wed, 24 Aug 2022 16:53:29 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id bh19-20020a05600c3d1300b003a2f6367049sm3479206wmb.48.2022.08.24.16.53.29
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Aug 2022 16:53:29 -0700 (PDT)
Message-ID: <0c5c0e42-f722-e983-8d5f-9e865b01b6de@gmail.com>
Date:   Thu, 25 Aug 2022 01:53:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Content-Language: en-US
To:     linux-man <linux-man@vger.kernel.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
Subject: Pre-release 6.0-rc1
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Jg5DTK9eEnbVe20PiRI59g0o"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Jg5DTK9eEnbVe20PiRI59g0o
Content-Type: multipart/mixed; boundary="------------uJ5BPepI3nnWcplNMVrRlpKS";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man <linux-man@vger.kernel.org>
Message-ID: <0c5c0e42-f722-e983-8d5f-9e865b01b6de@gmail.com>
Subject: Pre-release 6.0-rc1

--------------uJ5BPepI3nnWcplNMVrRlpKS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

R2lkZGF5LA0KDQpJIGNhbid0IHlldCBtYWtlIGFuIG9mZmljaWFsIHJlbGVhc2UgYmVjYXVz
ZSBJIG5lZWQgdG8gbWFrZSBzdXJlIEkNCmhhdmUgYSBjbGVhciBhbmQgY29tcGxldGUgbGlz
dCBvZiBzdGVwcyB0byByZWxlYXNlLCBhbmQgSSBuZWVkIHRvDQp3cml0ZSBhIGZldyBtb3Jl
IHNjcmlwdHMgZm9yIHRoYXQgdG8gd29yay4NCg0KSSBhbHNvIGRvbid0IGV4cGVjdCByZWxl
YXNpbmcgYmVmb3JlIGdyb2ZmLTEuMjMuMCBpcyByZWxlYXNlZCwNCnNpbmNlIHRoZSBjdXJy
ZW50IG1ha2VmaWxlIG1ha2VzIHVzZSBvZiBhIGZldyBmZWF0dXJlcyB0aGF0IHdpbGwNCmJl
IHJlbGVhc2VkIHdpdGggdGhhdCB2ZXJzaW9uIG9mIGdyb2ZmLiAgVGhleSdyZSBub3QgZnVu
ZGFtZW50YWwsDQpidXQgaXQgd2lsbCBiZSBiZXR0ZXIgaWYgYWxsIG9mIHRoZSBmZWF0dXJl
cyBvZiB0aGUgTWFrZWZpbGUgYXJlDQp1c2FibGUuDQoNCkknbSBnb2luZyB0byB1bmNvdXBs
ZSB0aGUgdmVyc2lvbiBudW1iZXJzIG9mIHRoaXMgcHJvamVjdCBmcm9tIHRoZQ0KTGludXgg
a2VybmVsIHZlcnNpb25zLCBzaW5jZSB0aGlzIHByb2plY3QgZG9jdW1lbnRzIG11Y2ggbW9y
ZSB0aGFuDQpqdXN0IHRoZSBrZXJuZWwuICBFc3BlY2lhbGx5LCBsaWJjIChHTlUgbGliYykg
ZG9jdW1lbnRhdGlvbiBpcyBhcw0KaW1wb3J0YW50IGFzIHRoZSBrZXJuZWwgb25lIGZvciB0
aGlzIHByb2plY3QuDQoNClNpbmNlIG5leHQgcmVsZWFzZSB3aWxsIGJlIHRoZSBiaWdnZXN0
IHJlbGVhc2UgaW4gdGhlIExpbnV4DQptYW4tcGFnZXMgcHJvamVjdCBzbyBmYXIsIGR1ZSB0
byBub3QgaGF2aW5nIHJlbGVhc2VkIGluIGEgdmVyeQ0KbG9uZyB0aW1lLCBhbmQgYWxzbyBz
aW5jZSBpdCdzIHRoZSBmaXJzdCByZWxlYXNlIHRoYXQgSSdsbCBkbw0KYXMgdGhlIG1haW4g
bWFpbnRhaW5lciwgaXQgbWFrZXMgc2Vuc2UgdG8gc3RhcnQgdGhlIDYgcmVsZWFzZQ0Kc2Vy
aWVzLiAgTmV4dCBvZmZpY2lhbCByZWxlYXNlIHdpbGwgYmUgIm1hbi1wYWdlcy02LjAiLg0K
DQpTb21lIHdvcmsgaGFzIGltcHJvdmVkIG9uIHRoZSBNYWtlZmlsZSBmb3IgcmVsZWFzaW5n
LCBzbyBJIGV4cGVjdA0KdGhhdCB0byBiZSBjbG9zZXIgbm93Lg0KDQo8aHR0cHM6Ly9naXQu
a2VybmVsLm9yZy9wdWIvc2NtL2RvY3MvbWFuLXBhZ2VzL21hbi1wYWdlcy5naXQvdGFnLz9o
PW1hbi1wYWdlcy02LjAtcmMxPg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KLS0gDQpBbGVqYW5k
cm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------uJ5BPepI3nnWcplNMVrRlpKS--

--------------Jg5DTK9eEnbVe20PiRI59g0o
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMGufgACgkQnowa+77/
2zKeKg/9GQl+DQGOvdR0uX8M/Xd6Di/xiZ3gYKeFszlZqVGpPtGaBLWqdXJjEUdp
f6Ikg2XgILTww2SXn0QaQQKPQVFNEQLr86xHdn9zhoJxM8+NSWGmTmg2XS6XCnQt
FExdkg35Yx9RATrPljfQ6imWoDgatbbi9FT6MQkjNttd2iagqCzVU4/qJNFaBi5C
Anju7nCwPVIjt9T55vFMwXa2quvOEEQnRFFOVQa8ugsG1K31wjW4mMinrz1qvZeo
GXRQ0CU+YTFiZKAOPk9eOMGyGxxHJ1lWsayMumeimSvZlnWZJg7CxxOTSBwfdygx
FgLbhcNs4xLMAWM9ctmIAQsbtIAyyf012T4ZhGkljWCvFytc4eAeGE3/8jl9Lh9m
2cDCja4FucTwdiRNal5jo5wJdep+YhLZh8/1IBCXEubEZgd9W5oy0e0jRNbwA0zt
HvL5FlOdnM1BPomXhDwLh7e9L44+W6HQn1S5V654xYOGepXNazgcQXlerqDXAKFV
RSoEryggadjmArBSNbAuQNvT0n5f2sddKZvcHVTJEkcMJaw3GW1INzP6ODhUYC7c
ZtZIql7R0He8cwgVJxUYRrgcKnEzcse/87kCMEi40ShxSJy+I9iPWh/l5nR1tZuy
kO6b/cjKya7+htsBhS82pdTBTnTXvP98fHm0wwOp0Ip14dZ7Pi0=
=kXWD
-----END PGP SIGNATURE-----

--------------Jg5DTK9eEnbVe20PiRI59g0o--

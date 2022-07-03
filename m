Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC5A6564961
	for <lists+linux-man@lfdr.de>; Sun,  3 Jul 2022 20:52:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231144AbiGCSwT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 3 Jul 2022 14:52:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229794AbiGCSwT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 3 Jul 2022 14:52:19 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 560985582
        for <linux-man@vger.kernel.org>; Sun,  3 Jul 2022 11:52:18 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id o16-20020a05600c379000b003a02eaea815so5822824wmr.0
        for <linux-man@vger.kernel.org>; Sun, 03 Jul 2022 11:52:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=yOkYeIzjexnd9sA8yXgoGQDVy8EyvLtHyWIsZiYg7Vw=;
        b=cL8LcSjoMXAUKDzjSyHFPUXkhI5Ze0usZx5AVTZ0rna78N0gpAQUIm/+WX4ZbAXf90
         wkfEXM6vgzz4XzkuH9WCTPa7QoyIFbVaQkpZzO90IyRN8Sl7mZjSNFwLznFxylFSGXej
         bzi8Z8kyotZix7jW62VGObYPJafNd82d7yCM2VBaSR78t6aHxSKq6Ti4xuPH/rCYRbYM
         7rluVUzEtflmkHwjSxM7TjuNXaNlX/CsX+dOt4OWghXr75ABltfWt048pEi8n6ft1mkf
         KOgD4kmHmxwjNthX9EZGOzpCP6U4KOA8VM/NuYYFgXU9jYDPHTx3h3NoP0mJQZFqauR5
         oYIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=yOkYeIzjexnd9sA8yXgoGQDVy8EyvLtHyWIsZiYg7Vw=;
        b=ToQstzvkDPUP1b2u+0puIZq3NG8un70ZYBX51x5HAZSHF7AvaPDt8FyjZ8vYkmTvsT
         CdPuR5QGBhLeMFzaVZGLnRIgnYqqd05YG85wneSzz4dcYcdobPmqJuOnS567geJfNXhS
         LARxFrQ1hflyheV5FKhodwxgAWraEYis9FPIVOXHMgY8vnbzvC+mK/MGWmPmcWEKqfDI
         x1A7+ZJc+UD6i77w3RSLRiZ3IVCthK1kEroc07psFQNP6+X91ta6duldFtBZWN6Vjt4i
         I/F+SP10HADFkguOd+DTN/mNMniS4Yr800GSUzORA9tptq6qxuVpoZ8OK7/Mx36fkUes
         M1pQ==
X-Gm-Message-State: AJIora8WFqPYWYRMO7hqpkicMiyRsDsp2FJT3HscnvfAy7ATrG4ybUPu
        zxBZw29uKg2hLVWaIhziS7t+hW2bTjs=
X-Google-Smtp-Source: AGRyM1u4clbFriXF8KlC0fOvfe443+jjyC8t9vbAxY6RENtxs9GpzurqSVxkpaNUXZrYbU/0xwO8zg==
X-Received: by 2002:a05:600c:1ca9:b0:3a0:43a9:5e1a with SMTP id k41-20020a05600c1ca900b003a043a95e1amr26154085wms.155.1656874336877;
        Sun, 03 Jul 2022 11:52:16 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id b10-20020a5d4d8a000000b0021d4aca9d1esm8895751wru.99.2022.07.03.11.52.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Jul 2022 11:52:16 -0700 (PDT)
Message-ID: <456cc269-7da0-c481-62e9-0000c79e972e@gmail.com>
Date:   Sun, 3 Jul 2022 20:52:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: possible bug in getmntent (3) manpage
Content-Language: en-US
To:     Lucien Gentis <lucien.gentis@waika9.com>
Cc:     linux-man@vger.kernel.org
References: <74fc13bc-50da-feef-e29a-6fd590682cc9@waika9.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <74fc13bc-50da-feef-e29a-6fd590682cc9@waika9.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------9TIhV7Eo2RFksJGS2RbuICWS"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------9TIhV7Eo2RFksJGS2RbuICWS
Content-Type: multipart/mixed; boundary="------------x50s8ZYJfLcDCtVrUvtgiWxe";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Lucien Gentis <lucien.gentis@waika9.com>
Cc: linux-man@vger.kernel.org
Message-ID: <456cc269-7da0-c481-62e9-0000c79e972e@gmail.com>
Subject: Re: possible bug in getmntent (3) manpage
References: <74fc13bc-50da-feef-e29a-6fd590682cc9@waika9.com>
In-Reply-To: <74fc13bc-50da-feef-e29a-6fd590682cc9@waika9.com>

--------------x50s8ZYJfLcDCtVrUvtgiWxe
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTHVjaWVuLA0KDQpPbiA2LzI3LzIyIDE0OjMyLCBMdWNpZW4gR2VudGlzIHdyb3RlOg0K
PiBEaXN0cmlidXRpb246IERlYmlhbiAxMSBCdWxsc2V5ZQ0KPiANCj4gSGVsbG8sDQo+IA0K
PiBJbiBnZXRtbnRlbnRfciBmdW5jdGlvbiBkZXNjcmlwdGlvbjoNCj4gDQo+IFNob3VsZG4n
dCBpdCBiZToNCj4gDQo+ICJidXQgc3RvcmVzIHRoZSBtbnRlbnQgc3RydWN0IGluIHRoZSBw
cm92aWRlZCAqbW50YnVmIg0KDQpZZXMsIHlvdSBmaXggbWFrZXMgc2Vuc2UuDQoNCj4gDQo+
IGluc3RlYWQgb2Y6DQo+IA0KPiAiYnV0IHN0b3JlcyB0aGUgc3RydWN0IG1vdW50IGluIHRo
ZSBwcm92aWRlZCAqbW50YnVmIg0KPiANCj4gKEkgZG9uJ3QgdW5kZXJzdGFuZCB3aGF0ICJ0
aGUgc3RydWN0IG1vdW50IiByZWZlcnMgdG8pDQoNCkkgZ3Vlc3MgdGhlIHdyaXRlciBvZiB0
aGUgcGFnZSBoYWQgdGhlIHdvcmQgbW91bnQgaW4gbWluZCwgc2luY2UgDQonbW50ZW50JyBp
cyBzaG9ydCBmb3IgbW91bnQgZW50cnksIGFuZCBhY2NpZGVudGFsbHkgd3JvdGUgdGhhdC4N
Cg0KSSB1c2VkIGEgd29yZGluZyBzbGlnaHRseSBkaWZmZXJlbnQgdG8gdGhlIG9uZSB5b3Ug
cHJvcG9zZSwgdG8gYmUgDQpjb25zaXN0ZW50IHdpdGggdGhlIHN0eWxlIHByZXNlbnQgaW4g
bWFueSBwYWdlcyB3aGVyZSB3ZSBzYXkgdGhpbmdzIGxpa2UgDQonbW50ZW50IHN0cnVjdHVy
ZScgaW5zdGVhZCBvZiAnc3RydWN0IG1udGVudCcgb3IgJ21udGVudCBzdHJ1Y3QnLiAgU2Vl
IA0KdGhlIHBhdGNoIEkgYXBwbGllZCBiZWxvdy4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCg0K
ICAgICBnZXRtbnRlbnQuMzogd2ZpeA0KDQogICAgIFJlcG9ydGVkLWJ5OiBMdWNpZW4gR2Vu
dGlzIDxsdWNpZW4uZ2VudGlzQHdhaWthOS5jb20+DQogICAgIFNpZ25lZC1vZmYtYnk6IEFs
ZWphbmRybyBDb2xvbWFyIDxhbHgubWFucGFnZXNAZ21haWwuY29tPg0KDQpkaWZmIC0tZ2l0
IGEvbWFuMy9nZXRtbnRlbnQuMyBiL21hbjMvZ2V0bW50ZW50LjMNCmluZGV4IGIzMjdkMjI4
Yi4uODRjOWQxYjk2IDEwMDY0NA0KLS0tIGEvbWFuMy9nZXRtbnRlbnQuMw0KKysrIGIvbWFu
My9nZXRtbnRlbnQuMw0KQEAgLTEyNiwxMCArMTI2LDExIEBAIFRoZSByZWVudHJhbnQNCiAg
ZnVuY3Rpb24gaXMgc2ltaWxhciB0bw0KICAuQlIgZ2V0bW50ZW50ICgpLA0KICBidXQgc3Rv
cmVzIHRoZQ0KLS5JIHN0cnVjdCBtb3VudA0KKy5JIG1udGVudA0KK3N0cnVjdHVyZQ0KICBp
biB0aGUgcHJvdmlkZWQNCi0uSSAqbW50YnVmDQotYW5kIHN0b3JlcyB0aGUgc3RyaW5ncyBw
b2ludGVkIHRvIGJ5IHRoZSBlbnRyaWVzIGluIHRoYXQgc3RydWN0DQorLklSICptbnRidWYg
LA0KK2FuZCBzdG9yZXMgdGhlIHN0cmluZ3MgcG9pbnRlZCB0byBieSB0aGUgZW50cmllcyBp
biB0aGF0IHN0cnVjdHVyZQ0KICBpbiB0aGUgcHJvdmlkZWQgYXJyYXkNCiAgLkkgYnVmDQog
IG9mIHNpemUNCg0KLS0gDQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFu
ZHJvLWNvbG9tYXIuZXMvPg0K

--------------x50s8ZYJfLcDCtVrUvtgiWxe--

--------------9TIhV7Eo2RFksJGS2RbuICWS
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLB5V4ACgkQnowa+77/
2zLYaQ//YZYWGLD+1Ok0wR57U9YamE5lxs2W5ZZAz9PbLnfRLUPtYoBek7fo9FUE
V29XOMHJiklvPtpRZZ6hw6HcKulnV7/usd5J73QxChiTWn4IXziHG6FsIXIaZWNN
DVFcdD0DgOPAZaZrzAYxFLHkU7wCku1YADMgVzETr+2eOuucCUBDwHCVqMg9D4vk
h6PN//+G2dlqIJcayUyuQ39cV3zdrMXUm0eIHkn3vvQP36qynotb4BaofMk5GWTs
L/drdF7i4bPdeAqg4XWU/XP21zV53MKB/N/CDrsy09ok1AMz4xF6H3AVXrh2TrUZ
ln+PP3T44kdEfSDdKWHq0xaJA96lPfQ9WkIKOouoAjMJM0uq9JoqaOPFq3XqP82C
ey372sawQyrpBxDLvX0GKQJUPDgndVn0dSolxiyATCKqvSKgu0E0DSPtEOEmITLS
/FoRRqQOxOh5B8FTRTomBJXSV2atC4HRlp5IXzpc3bSk7LzjLfh/jEdaHQTr56ri
boBiz4q0GV2wR+tCbE/gHJ3IWX4E46MOR1A/75aHmUyWTARXXTVGy/t6Fh0+h3qS
66tV+8uWZHxjly2BhPS47h7bkDfSMrmYjuUSHhli4hoLwmOi6ojaj7+V6e9A9L/K
lvoUayCYh7j4vaUH2W8jszt5oxFbRySr+76NF+C2dNhohcd52iE=
=HwuG
-----END PGP SIGNATURE-----

--------------9TIhV7Eo2RFksJGS2RbuICWS--

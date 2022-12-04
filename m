Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E305641F60
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 21:07:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229949AbiLDUHu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 15:07:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229970AbiLDUHt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 15:07:49 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4606F6596
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 12:07:48 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id bs21so15801261wrb.4
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 12:07:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rhvOM8iL87krt/bPOqn24Qwes1hiBMaiQKIiHofvFzA=;
        b=AeN2Z1M94UDRjvclzGZGga/1TxAcrMdi/sS2hF4yr4cyc2z1+ZYFWMsPwqVMOw2kCe
         xdRnZHuAt/jgKPiC0rzdIN6tHn/xrRMgd8eFq0uhi8WYabDDxAhkhWHQ5Kob1mVsrQv/
         z6oxlEjYuqjZp2lvqLSnaq5KyY03tTE9lchAQGDzai6gMRvtwdtICO+9MAYLi/RWkVk+
         wuZMuwMKqwW+Yq8GU+bmRpKEJvmib/dWn0GWBkFWmxRMwng6B1XUd4YrCh8ucE1edU8l
         owxI3dOcvshSqKSEFB0rSSIgQRU5zvPqgtLxQVGRMjww4UQCIL+Zwaaz51QokJ7HN/25
         yq0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rhvOM8iL87krt/bPOqn24Qwes1hiBMaiQKIiHofvFzA=;
        b=gL4qDlSLB/LfxaWjhYDnulC8OEvn71woMrvynDIikgs0wI4g7enWjXfuguQlU/qvAL
         F5+Bd+f6ihGjKVKe0WYCTpmK0Q1gIp3yHzoa8TJyr6yqxy5Zc606Bai/4VjsgI2wgAE1
         JetyhvhGCYDRiMhKrcminoJ+Yn5lmvhinHB52GJuFp7htxoH2+V5enweNMIiRQZOQ1yC
         LtlbcUQvoOVJp5X3YBmVDG6a2+8XTZOJKd+0Hx/e36GNEe5bRL+qojxPhPzd9DbmmteB
         hDaX+DFInn5rPn5UOw7y8cC+2OSXWgYrRzAqz7DMHT0kpjAXvIbwRRhsiz7MimFLncCF
         nHQQ==
X-Gm-Message-State: ANoB5pkEWfkvx9VBO+gRx6oU25HRNRaby29rYdnvlLCqNaKnVHB+4GFP
        cv4U6mNoGPPnJFy79da6cqY=
X-Google-Smtp-Source: AA0mqf7mUXRzwgGBXMy1AtAJteFUDSxL2WC0x4e/wzs4u/joZ7c0kct++7OEX8oK4S3Immo2Qji3ww==
X-Received: by 2002:a5d:428e:0:b0:242:bef:80a8 with SMTP id k14-20020a5d428e000000b002420bef80a8mr25272723wrq.18.1670184466840;
        Sun, 04 Dec 2022 12:07:46 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h6-20020a05600016c600b0023655e51c33sm12794773wrf.4.2022.12.04.12.07.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 12:07:46 -0800 (PST)
Message-ID: <08577b8c-950d-d090-4efb-7ebbd4114f11@gmail.com>
Date:   Sun, 4 Dec 2022 21:07:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page cgroup_namespaces.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20221204090718.GA877@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090718.GA877@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------VGm2Ug5xw0zrfLLgCZb01sY6"
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
--------------VGm2Ug5xw0zrfLLgCZb01sY6
Content-Type: multipart/mixed; boundary="------------UB3EQPQV0riy0KTI6FujkClv";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <08577b8c-950d-d090-4efb-7ebbd4114f11@gmail.com>
Subject: Re: Issue in man page cgroup_namespaces.7
References: <20221204090718.GA877@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090718.GA877@Debian-50-lenny-64-minimal>

--------------UB3EQPQV0riy0KTI6FujkClv
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiAN
Cj4gSXNzdWU6ICAgIHVzZXIgSUQg4oaSIFVJRA0KDQpJTU8sIChhbmQgSSBiZWxpZXZlIEJy
YW5kZW4gd2lsbCBhZ3JlZSksIHVzZXIgSUQgaXMgbW9yZSBpbmZvcm1hdGl2ZSB0aGFuIFVJ
RC4gDQpJZiBhbnkgY2hhbmdlLCBJJ2QgYXBwbHkgc29tZSBjb25zaXN0ZW5jeSBpbiB0aGUg
b3RoZXIgZGlyZWN0aW9uIChkb24ndCBrbm93IGhvdyANCm11Y2ggaW5jb25zaXN0ZW50IHRo
ZSBwYWdlcyBhcmUgcmVnYXJkaW5nIHRoYXQpOiBVSUQgLT4gdXNlciBJRC4NCg0KU28sIFdP
TlRGSVguICBUaGFua3MgZm9yIHRoZSByZXBvcnRzIQ0KDQpDaGVlcnMsDQoNCkFsZXgNCg0K
DQo+IA0KPiAiV2UgaGF2ZSBhIGNncm91cCBkaXJlY3RvcnksIEk8L2NnLzE+LCB0aGF0IGlz
IG93bmVkIGJ5IHVzZXIgSUQgOTAwMC4iID4NCj4gIldlIGhhdmUgYSBwcm9jZXNzLCBJPFg+
LCBhbHNvIG93bmVkIGJ5IHVzZXIgSUQgOTAwMCwgdGhhdCBpcyBuYW1lc3BhY2VkIg0KPiAi
dW5kZXIgdGhlIGNncm91cCBJPC9jZy8xLzI+IChpLmUuLCBJPFg+IHdhcyBwbGFjZWQgaW4g
YSBuZXcgY2dyb3VwIG5hbWVzcGFjZSINCj4gInZpYSBCPGNsb25lPigyKSAgb3IgQjx1bnNo
YXJlPigyKSAgd2l0aCB0aGUgQjxDTE9ORV9ORVdDR1JPVVA+IGZsYWcpLiINCj4gDQo+ICJJ
biB0aGUgYWJzZW5jZSBvZiBjZ3JvdXAgbmFtZXNwYWNpbmcsIGJlY2F1c2UgdGhlIGNncm91
cCBkaXJlY3RvcnkgSTwvY2cvMT4iDQo+ICJpcyBvd25lZCAoYW5kIHdyaXRhYmxlKSBieSBV
SUQgOTAwMCBhbmQgcHJvY2VzcyBJPFg+IGlzIGFsc28gb3duZWQgYnkgdXNlciINCj4gIklE
IDkwMDAsIHByb2Nlc3MgSTxYPiB3b3VsZCBiZSBhYmxlIHRvIG1vZGlmeSB0aGUgY29udGVu
dHMgb2YgY2dyb3VwcyBmaWxlcyINCj4gIihpLmUuLCBjaGFuZ2UgY2dyb3VwIHNldHRpbmdz
KSBub3Qgb25seSBpbiBJPC9jZy8xLzI+IGJ1dCBhbHNvIGluIHRoZSINCj4gImFuY2VzdG9y
IGNncm91cCBkaXJlY3RvcnkgSTwvY2cvMT4uICBOYW1lc3BhY2luZyBwcm9jZXNzIEk8WD4g
dW5kZXIgdGhlIg0KPiAiY2dyb3VwIGRpcmVjdG9yeSBJPC9jZy8xLzI+LCBpbiBjb21iaW5h
dGlvbiB3aXRoIHN1aXRhYmxlIG1vdW50IG9wZXJhdGlvbnMiDQo+ICJmb3IgdGhlIGNncm91
cCBmaWxlc3lzdGVtIChhcyBzaG93biBhYm92ZSksIHByZXZlbnRzIGl0IG1vZGlmeWluZyBm
aWxlcyBpbiINCj4gIkk8L2NnLzE+LCBzaW5jZSBpdCBjYW5ub3QgZXZlbiBzZWUgdGhlIGNv
bnRlbnRzIG9mIHRoYXQgZGlyZWN0b3J5IChvciBvZiINCj4gImZ1cnRoZXIgcmVtb3ZlZCBj
Z3JvdXAgYW5jZXN0b3IgZGlyZWN0b3JpZXMpLiAgQ29tYmluZWQgd2l0aCBjb3JyZWN0Ig0K
PiAiZW5mb3JjZW1lbnQgb2YgaGllcmFyY2hpY2FsIGxpbWl0cywgdGhpcyBwcmV2ZW50cyBw
cm9jZXNzIEk8WD4gZnJvbSBlc2NhcGluZyINCj4gInRoZSBsaW1pdHMgaW1wb3NlZCBieSBh
bmNlc3RvciBjZ3JvdXBzLiINCj4gDQo+ICJJbiB0aGUgYWJzZW5jZSBvZiBjZ3JvdXAgbmFt
ZXNwYWNpbmcsIGJlY2F1c2UgdGhlIGNncm91cCBkaXJlY3RvcnkgSTwvY2cvMT4iDQo+ICJp
cyBvd25lZCAoYW5kIHdyaXRhYmxlKSBieSBVSUQgOTAwMCBhbmQgcHJvY2VzcyBJPFg+IGlz
IGFsc28gb3duZWQgYnkgdXNlciINCj4gIklEIDkwMDAsIHRoZW4gcHJvY2VzcyBJPFg+IHdv
dWxkIGJlIGFibGUgdG8gbW9kaWZ5IHRoZSBjb250ZW50cyBvZiBjZ3JvdXBzIg0KPiAiZmls
ZXMgKGkuZS4sIGNoYW5nZSBjZ3JvdXAgc2V0dGluZ3MpIG5vdCBvbmx5IGluIEk8L2NnLzEv
Mj4gYnV0IGFsc28gaW4gdGhlIg0KPiAiYW5jZXN0b3IgY2dyb3VwIGRpcmVjdG9yeSBJPC9j
Zy8xPi4gIE5hbWVzcGFjaW5nIHByb2Nlc3MgSTxYPiB1bmRlciB0aGUiDQo+ICJjZ3JvdXAg
ZGlyZWN0b3J5IEk8L2NnLzEvMj4sIGluIGNvbWJpbmF0aW9uIHdpdGggc3VpdGFibGUgbW91
bnQgb3BlcmF0aW9ucyINCj4gImZvciB0aGUgY2dyb3VwIGZpbGVzeXN0ZW0gKGFzIHNob3du
IGFib3ZlKSwgcHJldmVudHMgaXQgbW9kaWZ5aW5nIGZpbGVzIGluIg0KPiAiSTwvY2cvMT4s
IHNpbmNlIGl0IGNhbm5vdCBldmVuIHNlZSB0aGUgY29udGVudHMgb2YgdGhhdCBkaXJlY3Rv
cnkgKG9yIG9mIg0KPiAiZnVydGhlciByZW1vdmVkIGNncm91cCBhbmNlc3RvciBkaXJlY3Rv
cmllcykuICBDb21iaW5lZCB3aXRoIGNvcnJlY3QiDQo+ICJlbmZvcmNlbWVudCBvZiBoaWVy
YXJjaGljYWwgbGltaXRzLCB0aGlzIHByZXZlbnRzIHByb2Nlc3MgSTxYPiBmcm9tIGVzY2Fw
aW5nIg0KPiAidGhlIGxpbWl0cyBpbXBvc2VkIGJ5IGFuY2VzdG9yIGNncm91cHMuIg0KDQot
LSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------UB3EQPQV0riy0KTI6FujkClv--

--------------VGm2Ug5xw0zrfLLgCZb01sY6
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOM/hEACgkQnowa+77/
2zJl7g//bdnx4LWk9f0TTb4Ia2gtbUSzlED2HY3RED8RqWgZSyBez9S7Tvz4DE4G
MQ1YYGF7OnbbMNHzrfjT9bGyjG2leqKZhu7ydgEcMPTQojln/DRuDU7gmxe+TFaX
7io0TyfzirbkozXqbCnimsItkRYE4XjjR4ZADk2EsEQW9qmXzhPPD96WlVMU/C/T
TB9PhKJv3KksyYNxGCGtz5Fx62e0jXwP1rcjtaKnOo8H8aKCMP5NQlu3kuzqnV92
hQr64d4nMZjZcorfl2fpVcXlhGNxLNNZ/hRXN03ENhpfE3BDr8QTDDwUYIvXh+3Z
AIjAZ83Jr2TxQuIF4wFaXfXlFydvkpescYrIUDuRWxM+fNYT6Onv+g02X1ekb7kp
NfaeUMg2EBUvCqiLEWFbBnG0RzC4axS6swcxc50p41gl+wtUM1//tbTpqVkXcvFZ
URIaKsADGrDB/oFVtMM9rIRSu6HcPn8v1RCt9Y586J8v5daFPQV+ytqPzaCgkkLB
PGh/agxf31qdDZeP1kf9yZBamwO1cwSxwZpm1itY8Yf/AFmv/RrH2GULfosqsUKw
rWOxMGrqChw8b5CbNXygUyrX57FRdtaqlpUrK9HBxNXM9JsjD06umFFtBR22E8g3
yC62opSD7Qf4xoVGYN0EOLx1TkKQYajuk60ukB1fgnoKOj/wfHk=
=KFDS
-----END PGP SIGNATURE-----

--------------VGm2Ug5xw0zrfLLgCZb01sY6--

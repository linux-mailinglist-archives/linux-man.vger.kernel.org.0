Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D591465D2C7
	for <lists+linux-man@lfdr.de>; Wed,  4 Jan 2023 13:35:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238969AbjADMfF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Jan 2023 07:35:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239149AbjADMfE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Jan 2023 07:35:04 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C8F61ADBF
        for <linux-man@vger.kernel.org>; Wed,  4 Jan 2023 04:35:02 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id bi26-20020a05600c3d9a00b003d3404a89faso624089wmb.1
        for <linux-man@vger.kernel.org>; Wed, 04 Jan 2023 04:35:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZEhWQKfeF5QGQQq0St86K6MYTNWGZKvm3wLpxByVLTA=;
        b=CPK8kQj9/428hHkYHlOEeisSHk7PP7JVyaGJv0Y51jVPdGu6HV3Ax//2EvFrO7CCkn
         TLhmXQhbfKygng8Fc3lqy7JflratNw+3tRllsspmb5UuBiFp3mkeaAlQyNwDCmEjvdXl
         w4ZEMulTl4R2dWk5SHY7HL7pR/lVaG/RbRFTGUo8X4+8YVZbAd3CNP1HKD9aON6EIeSW
         9t//T+/IEBYAHRFqqQFufE6ToFey0xfimPXs3AgQBuOOJm5SKKMlaIFbj2YoqHjl7WGi
         wm/kCWo6IGRcaTSud3i1ufmtVlX87Sw4yoHig+9XXPEUh6DAa8yhkP3WzwU/KlWQQJDb
         iGKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZEhWQKfeF5QGQQq0St86K6MYTNWGZKvm3wLpxByVLTA=;
        b=2WICHuOoGCeCM9Q3cFXvj7Qc9FSOtRA4cuqECX1uAg+QspofS+Iyp8Jw34mhBfG7+c
         4D5a+eH5QeQnmwUbKjCW+4fzrXDxkwLaocqWZn7IBLGWUNALbQAqfHVm5PksbJIRLauH
         yNqJFOvtHxrRBpEDykqYORXXm2v1in8A32diAoxAWsVbkeKKrDiOcEYxSWMRV35E0qNn
         RQwaZm/nXzD93U1+ASIHiJfa+6zpoqpZQRBRUObl5Z58ny2PMB3Mk1E9QqepAWtEMzKk
         2OslvSa48LXoc7Wr4z0HVFE1eXf5nDCqdHe0q/kiunsiDhx2O9K6pgkBI7aU8bvcSqbq
         mUSQ==
X-Gm-Message-State: AFqh2kqhyQr7xK0v58fV56uHrNgAnnPbDN9L5m5GE/2/AEritIkx6ZoT
        FKZ6+ufXktKNMRKYZbvQA6LPCgMT3g4=
X-Google-Smtp-Source: AMrXdXvALhYKXLX0fVynzkL21KnLzXfdrebr9cyGU2PSUdqA3SRwbTTHg3yPsUugCxNOIIs+jgaQgQ==
X-Received: by 2002:a05:600c:1c21:b0:3d2:2043:9cb7 with SMTP id j33-20020a05600c1c2100b003d220439cb7mr32871179wms.5.1672835700685;
        Wed, 04 Jan 2023 04:35:00 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id fc7-20020a05600c524700b003a3442f1229sm56754741wmb.29.2023.01.04.04.34.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Jan 2023 04:35:00 -0800 (PST)
Message-ID: <5fc0b202-0829-42b2-760a-25e1de006e34@gmail.com>
Date:   Wed, 4 Jan 2023 13:34:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v2 0/9] intro.3, libc.7, ldconfig.8: Revise
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230104073746.govufof5kk34nonj@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230104073746.govufof5kk34nonj@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------FemZ4aKUWZr8Hrc30n3CEXJ0"
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------FemZ4aKUWZr8Hrc30n3CEXJ0
Content-Type: multipart/mixed; boundary="------------qTo2De2l0nwfsdz0N2m6eZ0v";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <5fc0b202-0829-42b2-760a-25e1de006e34@gmail.com>
Subject: Re: [PATCH v2 0/9] intro.3, libc.7, ldconfig.8: Revise
References: <20230104073746.govufof5kk34nonj@illithid>
In-Reply-To: <20230104073746.govufof5kk34nonj@illithid>

--------------qTo2De2l0nwfsdz0N2m6eZ0v
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMS80LzIzIDA4OjM3LCBHLiBCcmFuZGVuIFJvYmluc29uIHdy
b3RlOg0KPiBIaSBBbGV4LA0KPiANCj4gdjI6DQo+IA0KPiAqIE5vIGxvbmdlciBtaWdyYXRl
cyBgUFBgIG1hY3JvcyB0byBgUGAuDQo+ICogTm8gbG9uZ2VyIG1pZ3JhdGVzIEFTQ0lJICJh
cnJvdyIgYC0+YCB0byB0cm9mZiBzcGVjaWFsIGNoYXJhY3Rlci4NCkknZCBsaWtlIHRoaXMg
Y2hhbmdlLCBpZiB5b3UgY2FuIGFwcGx5IGl0IGdsb2JhbGx5LiAgQnV0IHdlJ2xsIGxlYXZl
IGl0IGZvciBhIA0Kc2VwYXJhdGUgcGF0Y2ggc2V0Lg0KDQo+ICogQ2hhbmdlcyB0byBlYWNo
IHBhZ2Ugc3BsaXQgaW50byBtYXJrdXAsIHN0eWxlLCBhbmQgY29udGVudCBjaGFuZ2VzLg0K
PiANCj4gRm9yIHJlZmVyZW5jZSwgdGhpcyB0cmljaG90b215IGlzIG9uZSB0aGF0IGV2b2x2
ZWQgZm9yIG1lIG92ZXIgdGhlIHBhc3QNCj4gNS02IHllYXJzIHdoaWxlIHdvcmtpbmcgb24g
Z3JvZmYgbWFuIHBhZ2VzLiAgSGVyZSBpcyBob3cgSSBkZWZpbmUgdGhlbSwNCj4gZm9yIHJl
ZmVyZW5jZS4NCj4gDQo+ICsgTWFya3VwIGNoYW5nZXMgYWZmZWN0ICJvbmx5IiB0aGUgZG9j
dW1lbnQgc291cmNlIGFuZCBhcmUgbm90IHZpc2libGUNCj4gICAgaW4gZm9ybWF0dGVkIG91
dHB1dC4gIFRoZXJlIGlzIHNvbWUgaW1wcmVjaXNpb24gaW4gdGhpcyBjYXRlZ29yeTsgSQ0K
PiAgICB3b3VsZCByZWdhcmQgYSBjaGFuZ2UgdG8gd29yZCBicmVha3BvaW50cyBvciBoeXBo
ZW5hdGlvbiBhcyBhICJtYXJrdXAiDQo+ICAgIGZpeCBldmVuIHRob3VnaCB0aGVzZSBfbWln
aHRfIGJlIHZpc2libGUgaW4gdGhlIG91dHB1dCBkZXBlbmRpbmcgb24NCj4gICAgdGhlIGxp
bmUgbGVuZ3RoIG9mIHRoZSBvdXRwdXQgZGV2aWNlICh3aGljaCwgZm9yIHRlcm1pbmFscywg
aXMgaGlnaGx5DQo+ICAgIGZsZXhpYmxlKS4gIEFsdGVyYXRpb25zIHRvIGluZGVudGF0aW9u
IHdvdWxkIHByb2JhYmx5IGFsc28gcXVhbGlmeS5cDQoNClRoaXMgbW9yZSBvciBsZXNzIGNv
cnJlc3BvbmRzIHRvIHdoYXQgd2UgY2FsbCBzcmNmaXggKGFsdGhvdWdoIHNvbWUgbWlnaHQg
DQpxdWFsaWZ5IGFzIGZmaXg7IHRoZSBvbmVzIHlvdSBjYWxsZWQgaW1wcmVjaXNlKS4NCg0K
PiANCj4gKyBTdHlsZSBjaGFuZ2VzIGFyZSBhIGJyb2FkIGNhdGVnb3J5IGVuY29tcGFzc2lu
ZyBjb3JyZWN0aW9ucyB0bw0KPiAgICBzcGVsbGluZw0KDQpUaGlzIG1vcmUgb3IgbGVzcyBj
b3JyZXNwb25kcyB0byB3aGF0IHdlIGNhbGwgdGZpeC4NCg0KPiBhbmQgZ3JhbW1hciBpbiBu
YXR1cmFsIGxhbmd1YWdlLA0KDQpUaGlzIG1vcmUgb3IgbGVzcyBjb3JyZXNwb25kcyB0byB3
aGF0IHdlIGNhbGwgd2ZpeC4gIHdmaXggY2FuIGVuZ2xvYmUgdGZpeCBub3JtYWxseS4NCg0K
PiBidXQgYWxzbyB0aGluZ3MgbGlrZQ0KPiAgICB0eXBlZmFjZSBjaGFuZ2VzIG9yIGNoYW5n
ZXMgdG8gdGhlIHN0eWxlIG9mIGEgc291cmNlIGNvZGUgZXhhbXBsZS4NCg0KVGhpcyBtb3Jl
IG9yIGxlc3MgY29ycmVzcG9uZHMgdG8gd2hhdCB3ZSBjYWxsIGZmaXguICBJdCBtaWdodCBi
ZSBnb29kIHRvIGJyZWFrIA0Kc3VjaCBjaGFuZ2VzIGluIHR3byBvciB0aHJlZSBzZXBhcmF0
ZSBjYXRlZ29yaWVzLCBhbHRob3VnaCBzb21ldGltZXMgb25lIG5lZWRzIA0KdGhlIG90aGVy
LCBhbmQgaXQncyBzaW1wbGVyIHRvIGp1c3QgYXBwbHkgb25lIHBhdGNoIHRoYXQgZG9lcyBh
bGwgb2YgdGhlbS4NCg0KPiANCj4gKyBDb250ZW50IGNoYW5nZXMgc2lnbmlmaWNhbnRseSBh
bHRlciB0aGUgaW5mb3JtYXRpb25hbCBzdWJzdGFuY2Ugb2YgdGhlDQo+ICAgIHBhZ2UuICBU
aGVzZSBpbmNsdWRlIGNvcnJlY3Rpb25zIHRvIG1hdHRlcnMgb2YgZmFjdCBvciBleHBvc3Vy
ZSBvZg0KPiAgICBwcmV2aW91c2x5IHVuZG9jdW1lbnRlZCBpbmZvcm1hdGlvbi4NCg0KQW5k
IHRoZXNlIGFyZSBub24tdHJpdmlhbCBwYXRjaGVzIHRoYXQgaGF2ZSB0aGVpciBvd24gZGVz
Y3JpcHRpb24uDQoNCg0KU2VlIHRoZSBDT05UUklCVVRJTkcgZmlsZToNCg0KICAgICAgICAt
ICBGb3IgdHJpdmlhbCBwYXRjaGVzLCB5b3UgY2FuIHVzZSBzdWJqZWN0IHRhZ3M6DQoNCiAg
ICAgICAgICAgLSAgZmZpeDogRm9ybWF0dGluZyBmaXguDQogICAgICAgICAgIC0gIHRmaXg6
IFR5cG8gZml4Lg0KICAgICAgICAgICAtICB3Zml4OiBNaW5vciB3b3JkaW5nIGZpeC4NCiAg
ICAgICAgICAgLSAgc3JjZml4OiBDaGFuZ2UgdG8gbWFudWFsIHBhZ2Ugc291cmNlIHRoYXQg
ZG9lc24ndCBhZmZlY3Qgb3V0cHV0Lg0KDQogICAgICAgICAgIEV4YW1wbGU6DQoNCiAgICAg
ICAgICAgICAgIFtwYXRjaF0gdGNwLjc6IHRmaXgNCg0KUHJldmlvdXNseSwgd2UgYWxzbyBo
YXMgd3NmaXggKHdoaXRlLXNwYWNlIGZpeCkgYW5kIHBmaXggKHB1bmN0dWF0aW9uIGZpeCks
IGJ1dCANCnRob3NlIGdvdCBhc3NpbWlsYXRlZCBieSB0aGUgZXh0YW50IGNhdGVnb3JpZXMu
DQoNCj4gDQo+IFJlZ2FyZHMsDQo+IEJyYW5kZW4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCi0t
IA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------qTo2De2l0nwfsdz0N2m6eZ0v--

--------------FemZ4aKUWZr8Hrc30n3CEXJ0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO1cnMACgkQnowa+77/
2zK6hw//Qs70Mz+ttaTpvUPtMCNxdCRjwgL8upsAY5FqdAVUz7MSfhzyic1aPXdH
12yTOwY7ZdC9nNXW5CjaoK48TvRulKO1iE+JB4xR46uF5ozNkyZLOQdUoZfm9sOD
NCG6KExGG/LfySsPlFB92kzi8+Nlm03XKzEk2KxhoZiFREwVie97V8U5R+zengxQ
NEJzb8xAP9SU0HGTZz+4tkJxCTNFEXMaVtHahFwE7a6llGPQqPxjM+Gky+kieIJ6
GgCINB5EpwUvQSfKyd6UD6FFlHYGN7RcSW/bES5IDGCbgA5+z/5ADqcWLXYXMXcU
HU4IApfYSJlDKbvOE6t4GAlIpA03tO9j3P9XscV3IN4fJakJGGsBlhR4CMmdwKIc
iJv4pggsfTGOmdjyq87YyJrV4FNP9c98Wbl1kNkNg9JFAaHwhYlT7FqcizzIzvTf
gwIL8NVbAMT9yFJ8/cSZhRayVug8vSyHcVDfxJQc1en6oIY7wa8E88oueWHVevp9
gfN72TdhAHjbf/6jALxFFVzpopNUdqIOoDiX4saT/f8NSR/U/rzaWd9Ff/asTp8J
FTGMZsxyJAi7G/Y3eghJp0wk6xCVtvdSXe5p4lYrJKrd20qquYn5BqxKbluWxCbS
6kOT3Eo4Vd6qn8laUaZudKlGw2C4gC1AMiT4mKPNfwy6MqzYUDg=
=EamR
-----END PGP SIGNATURE-----

--------------FemZ4aKUWZr8Hrc30n3CEXJ0--

Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9562E648929
	for <lists+linux-man@lfdr.de>; Fri,  9 Dec 2022 20:43:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230030AbiLITno (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 9 Dec 2022 14:43:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229628AbiLITnb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 9 Dec 2022 14:43:31 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36E6DACB3E
        for <linux-man@vger.kernel.org>; Fri,  9 Dec 2022 11:43:30 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id u12so6182361wrr.11
        for <linux-man@vger.kernel.org>; Fri, 09 Dec 2022 11:43:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mzwnAuelYdT1XbPpc2+3WcG01tQcq4RQdsu8I0qUXQU=;
        b=cf6yOJEwAHMe30b63aCWP1xpeGmQKp1JeiISzY9KLcPjARNBwxHfulT7cb+BGkvD4l
         Xfgxo1xf+Dr1UOAh8QLC/12/xcEBZMB6RoqrJ7sY9jPEGBxBQo9pIEGtlDUfRmKGu1Dk
         NmouOmTsJGjzL4oG6qmuAw5bNmUpKsuAb0kcEp0+JErWZiBXgpnmbAIMrex7JzlIARao
         wf2P68KXqhgTVG6lSZiYtBYiDhTk1QYx8PuG8tYrnpBIQ8XpTmD73r2iN1tqnqJq9mbU
         6X9GR1kc/1rRptQ1qC8eALXhBgVf6tp6l9yUwH6ANEJM+yP9Pl79qe1FCd2WZtbXLUE/
         dgOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mzwnAuelYdT1XbPpc2+3WcG01tQcq4RQdsu8I0qUXQU=;
        b=prB4xh/TEtFXJdIENGy9dTKLOBrKq+aEQVQORIN9h0HNwsX9zOYuTkFZk2oWsqEHQO
         OZ473S+hfzQSyx056dlX8o/dYebO4jQc7QqBfyvHmGH/vW4MdnKss7C5VtA0nTrVNhsH
         t22xYykPem74SmR6oBiUmD61wUOzWQrBwHhL0AGM/ygP9/ciIVvoDjxFsYf52b+gJZ1N
         vOo1rnls7n5KjXMBzAd84YoOkj5Fe/jtQhqSqKjiyZsJIwzQ2ja++IBgD5dd5QE7jr7c
         OUlgqN+l6uv4FkOT1DZ2pcHtQcTqMLDnelsUPeqD5mHMd9WGjilIjiXcbpLAgUoG58P/
         KwQw==
X-Gm-Message-State: ANoB5plx/HQH6fh8ihI4G25lJSGZpo0hcVBTFYgzOrb9s7rik155eGTc
        TfoUmb9geTlOMK99dagG0JA=
X-Google-Smtp-Source: AA0mqf7SCo2ZTokpsiCFku+1o9EWEdvatIRQKVyAkfSOBUscO2hzbNJidlcCeI+chgzK+xSaO8f4zQ==
X-Received: by 2002:adf:a44a:0:b0:242:46f1:1d90 with SMTP id e10-20020adfa44a000000b0024246f11d90mr5271175wra.64.1670615008786;
        Fri, 09 Dec 2022 11:43:28 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id bt4-20020a056000080400b002365cd93d05sm2143019wrb.102.2022.12.09.11.43.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Dec 2022 11:43:28 -0800 (PST)
Message-ID: <bc30d5ac-c33b-9a67-fa85-1003da0057f5@gmail.com>
Date:   Fri, 9 Dec 2022 20:43:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: preferred /proc/<pid>/xxx style?
Content-Language: en-US
To:     Mike Frysinger <vapier@gentoo.org>, linux-man@vger.kernel.org
References: <Y5MCsc/H9BV6RcST@vapier>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <Y5MCsc/H9BV6RcST@vapier>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------e1K3K3hU7FQgz6SrabX3tq0z"
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
--------------e1K3K3hU7FQgz6SrabX3tq0z
Content-Type: multipart/mixed; boundary="------------q8Oo8jVd0qYrE0BXElEbDJr9";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Mike Frysinger <vapier@gentoo.org>, linux-man@vger.kernel.org
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <bc30d5ac-c33b-9a67-fa85-1003da0057f5@gmail.com>
Subject: Re: preferred /proc/<pid>/xxx style?
References: <Y5MCsc/H9BV6RcST@vapier>
In-Reply-To: <Y5MCsc/H9BV6RcST@vapier>

--------------q8Oo8jVd0qYrE0BXElEbDJr9
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTWlrZSENCg0KT24gMTIvOS8yMiAxMDo0MSwgTWlrZSBGcnlzaW5nZXIgd3JvdGU6DQo+
IHdoaWxlIGJyb3dzaW5nIHRpbWVfbmFtZXNwYWNlcyg3KSwgaSBub3RpY2VkIGl0J3MgaW5j
b25zaXN0ZW50IHdoZW4gaXQgY29tZXMgdG8NCj4gc3R5bGluZyBvZiAvcHJvYy88cGlkPi9w
YXRocy4gIGl0IHVzZXMgdGhlIHN0eWxlczoNCj4gKiAuSVIgL3Byb2MvIHBpZCAvbnMvdGlt
ZV9mb3JfY2hpbGRyZW4NCj4gKiAuSSAvcHJvYy9QSUQvdGltZW5zX29mZnNldHMNCj4gDQo+
IGdyZXBwaW5nIHRoZSB0cmVlIHR1cm5zIHVwIG1vcmU6DQo+ICogLkkgL3Byb2MvPHBpZD4v
bWFwcw0KPiAqIC5JIC9wcm9jL1twaWRdL3N0YXR1cw0KPiANCj4gaXQgc2VlbXMgdGhhdCB0
aGUgdHJlZSBpcyBtb3ZpbmcgdG93YXJkcyB0aGUgZmlyc3Qgc3R5bGUuDQoNClRoYXQncyBj
b3JyZWN0Lg0KDQo+ICBwZXJzb25hbGx5IGkgZmluZA0KPiB0aGF0IGphcnJpbmcgdG8gcmVh
ZCBiZWNhdXNlIGl0J3MgdXNpbmcgaXRhbGljcyBmb3IgdGhlIHdob2xlIHBhdGggZXhjZXB0
IGZvcg0KPiB0aGUgcGlkIHdoaWNoIGhhcyBubyBzdHlsaW5nIGF0IGFsbC4gIGluIHRoZSB0
ZXJtaW5hbCB0aGlzIHlpZWxkcyBjb2xvcmVkICYNCj4gdW5kZXJsaW5lZCB0ZXh0IGV4Y2Vw
dCBmb3IgdGhlICJwaWQiIHdoaWNoIGlzIGp1c3QgcGxhaW4gdGV4dCBsaWtlIHRoZSByZXN0
Lg0KPiANCj4gY29tbWl0IDFhZTZiMmM3YjgxOGU1ZDg4MDRjZjhkM2FiZmRiNmZiYTMyMTE5
ZGIgbWFkZSBhIGxhcmdlIGNoYW5nZSByZWNlbnRseQ0KPiB0byBwcm9jKDUpIHRvIHVzZSAu
SVIsIGJ1dCB3aXRoIG5vIGV4cGxhbmF0aW9uIGluIHRoZSBjb21taXQgbWVzc2FnZSBvdGhl
cg0KPiB0aGFuIHRvIHNhdGlzZnkgYSBsaW50ZXIsIGFuZCBydW5uaW5nIHRoYXQgbGludGVy
IGxvY2FsbHkgZG9lc24ndCBzZWVtIHRvIHNob3cNCj4gYW55IHdhcm5pbmdzIHdoZW4gdXNp
bmcgdGhlIHByZXZpb3VzIC9wcm9jL1twaWRdIHN0eWxlLg0KDQpZb3UgcHJvYmFibHkgZG9u
J3QgZ2V0IHRoZSBsaW50ZXIgd2FybmluZ3MgYmVjYXVzZSBJIHRoaW5rIHRoYXQgcmVxdWly
ZXMgDQpncm9mZi0xLjIzLjAgKHN0aWxsIHVucmVsZWFzZWQ7IGhvcGVmdWxseSBhdmFpbGFi
bGUgc29vbikuDQoNCldlJ3JlIHRhbGtpbmcgYWJvdXQgdGhlIGZvbGxvd2luZyBkaWZmOg0K
DQotLklSIC9wcm9jL1twaWRdL2ZkaW5mbw0KKy5JUiAvcHJvYy8gcGlkIC9mZGluZm8NCg0K
VXNpbmcgJy5JUicgd2l0aCBhIHNpbmdsZSBhcmd1bWVudCByZXN1bHRzIGluIGEgd2Fybmlu
Zywgc2luY2UgaXQgd291bGQgYmUgDQpiZXR0ZXIgd3JpdHRlbiBhcyAnLkknLiAgSG93ZXZl
ciwgSSBkZWNpZGVkIHRvIGFwcGx5IHRoZSBzdHlsZSBmaXggaW5zdGVhZCBvZiANCnNpbXBs
ZnkgZml4aW5nIHRoZSB3YXJuaW5nLiAgSSBzaG91bGQgaGF2ZSBiZWVuIG1vcmUgZGV0YWls
ZWQgaW4gdGhlIGNvbW1pdCANCm1lc3NhZ2UuICBJIG9ubHkgY292ZXJlZCBpdCB3aXRoICJQ
bHVzIHNvbWUgb3RoZXIgZm91bmQgaW4gdGhlIHByb2Nlc3MuIi4NCg0KDQo+IA0KPiB0aGUg
bWFuLXBhZ2VzKDcpIGd1aWRhbmNlIGRvZXNuJ3QgY292ZXJ0IHRoaXMgYWZhaWN0LiAgaXQg
aGFzOg0KPj4gRm9ybWF0dGluZyBjb252ZW50aW9ucyAoZ2VuZXJhbCkNCj4+IEZpbGVuYW1l
cyAod2hldGhlciBwYXRobmFtZXMsIG9yIHJlZmVyZW5jZXMgdG8gaGVhZGVyIGZpbGVzKSBh
cmUgYWx3YXlzIGluIGl0YWxpY3MgLi4uDQo+IHRoYXQgaW1wbGllcyBpdCBzaG91bGQgYmUg
b25seSBpbiBpdGFsaWNzLg0KDQpJdCBpc24ndCBjb3ZlcmVkIGluIG1hbi1wYWdlcyg3KSwg
QUZBSUsuICBIb3dldmVyLCBpdCBpcyBjb3ZlcmVkIGJ5IA0KZ3JvZmZfbWFuX3N0eWxlKDcp
IChhbHNvIHVucmVsZWFzZWQ7IG1heWJlIHlvdXIgdmVyc2lvbiBvZiBncm9mZl9tYW4oNykg
Y292ZXJzIGl0KToNCg0KDQpncm9mZl9tYW5fc3R5bGUoNyk6DQogICAgICAgIC5JIFt0ZXh0
XQ0KICAgICAgICAgICAgICAgLi4uDQoNCiAgICAgICAgICAgICAgIFVzZSAgaXRhbGljcyBm
b3IgZmlsZSBhbmQgcGF0aCBuYW1lcywgZm9yIGVudmlyb25tZW50IHZhcmlhYmxlcywNCiAg
ICAgICAgICAgICAgIGZvciBDIGRhdGEgdHlwZXMsIGZvciBlbnVtZXJhdGlvbiBvciBwcmVw
cm9jZXNzb3IgIGNvbnN0YW50cyAgaW4NCiAgICAgICAgICAgICAgIEMsICBmb3IgIHZhcmlh
YmxlICh1c2Vy4oCQZGV0ZXJtaW5lZCkgcG9ydGlvbnMgb2Ygc3ludGF4IHN5bm9wc2VzLA0K
ICAgICAgICAgICAgICAgZm9yIHRoZSBmaXJzdCBvY2N1cnJlbmNlIChvbmx5KSBvZiBhIHRl
Y2huaWNhbCBjb25jZXB0IGJlaW5nIGlu4oCQDQogICAgICAgICAgICAgICB0cm9kdWNlZCwg
Zm9yIG5hbWVzIG9mIGpvdXJuYWxzIGFuZCAgb2YgIGxpdGVyYXJ5ICB3b3JrcyAgbG9uZ2Vy
DQogICAgICAgICAgICAgICB0aGFuICBhbiBhcnRpY2xlLCBhbmQgYW55d2hlcmUgYSBwYXJh
bWV0ZXIgcmVxdWlyaW5nIHJlcGxhY2VtZW50DQogICAgICAgICAgICAgICBieSB0aGUgdXNl
ciBpcyBlbmNvdW50ZXJlZC4gICpBbiBleGNlcHRpb24qIGludm9sdmVzIHZhcmlhYmxlIHRl
eHQNCiAgICAgICAgICAgICAgIGluIGEgY29udGV4dCB0aGF0IGlzIGFscmVhZHkgbWFya2Vk
IHVwIGluIGl0YWxpY3MsIHN1Y2ggYXMgIGZpbGUNCiAgICAgICAgICAgICAgIG9yICBwYXRo
ICBuYW1lcyAgd2l0aCB2YXJpYWJsZSBjb21wb25lbnRzOyBpbiBzdWNoIGNhc2VzLCBmb2xs
b3cNCiAgICAgICAgICAgICAgIHRoZSBjb252ZW50aW9uIG9mIG1hdGhlbWF0aWNhbCB0eXBv
Z3JhcGh5OiBzZXQgdGhlIGZpbGUgb3IgIHBhdGgNCiAgICAgICAgICAgICAgIG5hbWUgIGlu
ICBpdGFsaWNzICBhcyAgdXN1YWwgYnV0IHVzZSByb21hbiBmb3IgdGhlIHZhcmlhYmxlIHBh
cnQNCiAgICAgICAgICAgICAgIChzZWUgLklSIGFuZCAuUkkgYmVsb3cpLCBhbmQgaXRhbGlj
cyBhZ2FpbiBpbiBydW5uaW5nIHJvbWFuIHRleHQNCiAgICAgICAgICAgICAgIHdoZW4gcmVm
ZXJyaW5nIHRvIHRoZSB2YXJpYWJsZSBtYXRlcmlhbC4NCg0KSSBtYXJrZWQgdGhlIHN0YXJ0
IG9mIHRoZSBpbXBvcnRhbnQgcGFydC4NCg0KSSB3aWxsIHNvbWUgZGF5IG1ha2UgaXQgY29u
c2lzdGVudCBhY3Jvc3MgYWxsIHBhZ2VzLg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiANCj4g
aWYgd2UgbG9vayBhIGJpdCBmdXJ0aGVyLCB1c2luZyAuSVIgc2VlbXMgaW5jb25zaXN0ZW50
Lg0KPj4gU1lOT1BTSVMNCj4+IEZvciBjb21tYW5kcywgdGhpcyBzaG93cyB0aGUgc3ludGF4
IG9mIHRoZSBjb21tYW5kIGFuZCBpdHMgYXJndW1lbnRzIChpbmNsdWRpbmcgb3B0aW9ucyk7
DQo+PiBib2xkZmFjZSBpcyB1c2VkIGZvciBhcy1pcyB0ZXh0IGFuZCBpdGFsaWNzIGFyZSB1
c2VkIHRvIGluZGljYXRlIHJlcGxhY2VhYmxlIGFyZ3VtZW50cw0KPj4NCj4+IEZvcm1hdHRp
bmcgY29udmVudGlvbnMgZm9yIG1hbnVhbCBwYWdlcyBkZXNjcmliaW5nIGNvbW1hbmRzDQo+
PiBGb3IgbWFudWFsIHBhZ2VzIHRoYXQgZGVzY3JpYmUgYSBjb21tYW5kICguLi4pLCB0aGUg
YXJndW1lbnRzIGFyZSBhbHdheXMgc3BlY2lmaWVkIHVzaW5nIGl0YWxpY3MNCj4+DQo+PiBG
b3JtYXR0aW5nIGNvbnZlbnRpb25zIGZvciBtYW51YWwgcGFnZXMgZGVzY3JpYmluZyBmdW5j
dGlvbnMNCj4+IEZvciBtYW51YWwgcGFnZXMgdGhhdCBkZXNjcmliZSBmdW5jdGlvbnMgKC4u
LiksIHRoZSBhcmd1bWVudHMgYXJlIGFsd2F5cyBzcGVjaWZpZWQgdXNpbmcgaXRhbGljcywN
Cj4+IGV2ZW4gaW4gdGhlIFNZTk9QU0lTIHNlY3Rpb24sIHdoZXJlIHRoZSByZXN0IG9mIHRo
ZSBmdW5jdGlvbiBpcyBzcGVjaWZpZWQgaW4gYm9sZDoNCj4gLW1pa2UNCg0KDQoNClAuUy46
IFBsZWFzZSBDQyBtZSA6KQ0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFy
LmVzLz4NCg==

--------------q8Oo8jVd0qYrE0BXElEbDJr9--

--------------e1K3K3hU7FQgz6SrabX3tq0z
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOTj9kACgkQnowa+77/
2zIEpA//Q6OxT9mbYbOKXDgWjQXsjKL10N+hKS5jSvIVQxpOmsjxsQtG9xbsatrt
nWOvyEFJHnEQoh6LCac6r7I4EYb3Bu8LybX64eoXxPmIjIjK/fr9JsWvteB9GXEo
t28PpwM/LW9Be5Z11s1qQ1moME0kWMtXAr7xcD5eFqGlbHd0598ukbI811gZaAos
4rCtxGhl5Z1+6St5kPJt3uNg7iSRL+GTOD7Cs+LD3miKonBJWlafh6mSXvvW/vb5
XBP/UUc734efaScbKRE2iT/ib/KHbRMAbZQ1WzuNTZrLOGG04dzINdZokGIo970D
cyNLHsVI72D+0zkTqiYzdX6wI7il4fyIFFTyGv3ErS9JTntBeNogps2E0kBYvoTl
l8w+jtF28j8bCEtK2lUHaUn3Ui7Ti8oWedP966+G4V0rUX2w16lCTcH+LBkelvMz
I26+IN1gcLUZcx2HLjdnKhZ7irIri7gBcAOJfEco8QzJ8PhEXDOJkhkLNthnYptS
dl1RGR17ingv4jzGXTzrxwKnIQBGhMQZCtcnAIt3CKI3O8CYUer+Y9AVpSzB+xFU
LiiqWF7zCYrqV/MxrqlgUcXw4lXwo3GCl/jh1UgrA3jfON53/eVcm4uY0P560XqT
a2Xc7lFIBTI+7yegJFuFOHOfkCUSFeCiqIyYp6Wh3ZPPgKw4BR0=
=nvvb
-----END PGP SIGNATURE-----

--------------e1K3K3hU7FQgz6SrabX3tq0z--

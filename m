Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 20C0A54F7D1
	for <lists+linux-man@lfdr.de>; Fri, 17 Jun 2022 14:50:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232578AbiFQMuA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Jun 2022 08:50:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232477AbiFQMt7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Jun 2022 08:49:59 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6077837A84
        for <linux-man@vger.kernel.org>; Fri, 17 Jun 2022 05:49:58 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id v14so5650602wra.5
        for <linux-man@vger.kernel.org>; Fri, 17 Jun 2022 05:49:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=xob88ur9YQQQ4o4RFrKKIVL4inaiOHmGTXv3QDRhqBo=;
        b=ApuDr1pYthbQUvFrsiRKLgmvVoGtfFp/xXfqC5fn7JHNTtDx8KHSu8H5lT8M9tNiD2
         uvmw4xdq5Sng0jbURoyW75QqxZLGGeAqxdueyqctgLzscl2hb54denCh2eF9CRPAPvLU
         /+Qk89i7Kcsol0EsR0Ney0bZ+F8q6QmSAQIR7Ym14jHaWEJU7zJXPsj3iGKqpbMb8pP9
         9+1sZXbMi58K96g1Ez2bFc/EAXAcYiaJjtbI2wIACfVwRD4iGDTSlaHNvEsVti0DyRHU
         bO19srHnO9TnG05W7i6ZLREvEUwdsnK7tidUkQ7CVZ4hJArTR0F2FIH3RHDDiLmpWabO
         U4ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=xob88ur9YQQQ4o4RFrKKIVL4inaiOHmGTXv3QDRhqBo=;
        b=f70au7Z4SaYRnMH3YruAaiC7LuxNBlkLH5wKLDFsmyHKpE0FrKDn970aNCfxAm+DG8
         78SnTANuTarPxD71tGTEUhCgVee6QtrTlP4BzY1AlLkSLjbw9ss5FtB0o0zF7BW8YL8c
         3x5OepuGLGnidrNGXDJ5I8z/0aa3cRTE/H1zsR6mc4Lwild/WoIR23m2wVh+xOC9yJ0l
         tg2xRgmH1wUc61H7bnuzEp6w7wRTuFfVE2DoWc6J04gl/KrdgpGkyFeO0dL4blTs0Pdg
         Ougd7lZKSJN9wFUDucGKxXQpXQKzGeLoWsPyd3sMKK0j5LFZI/tzlo3irgM3fyOcgXGB
         TUKw==
X-Gm-Message-State: AJIora+Pkmk4LQWfJqGZg1Czt7RhBs3vElhhs9z0b6vTNtN+vblMY4n9
        VePFbv5rYE7U4Tsp41B9Zdg=
X-Google-Smtp-Source: AGRyM1twjk9D8aMR8iq7VlSixsIID3Z1P8tSuZGhqb9Dd5aNSnqDjALtjswdP3l3Yf56Ic3LooNvlA==
X-Received: by 2002:a5d:678d:0:b0:210:2f33:4399 with SMTP id v13-20020a5d678d000000b002102f334399mr9261971wru.599.1655470196965;
        Fri, 17 Jun 2022 05:49:56 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t2-20020adfdc02000000b0020c5253d8fcsm5478622wri.72.2022.06.17.05.49.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jun 2022 05:49:56 -0700 (PDT)
Message-ID: <a230e164-9d35-6333-7b3d-1e81a6eb77a9@gmail.com>
Date:   Fri, 17 Jun 2022 14:49:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH RESEND v5] fanotify.7, fanotify_mark.2: Document
 FAN_FS_ERROR
Content-Language: en-US
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Gabriel Krisman Bertazi <krisman@collabora.com>,
        linux-man <linux-man@vger.kernel.org>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <repnop@google.com>
References: <20220520180935.37796-1-krisman@collabora.com>
 <CAOQ4uxjd-xKz1=Z+165s4hX0aiBsbui2_+JAqaGr0AT0z5+scg@mail.gmail.com>
 <77ebe2f4-461a-4c3c-d53e-7a4c1f94e506@gmail.com>
 <CAOQ4uxjuVjDZN6+mvCV6Yk1=bn_oYVVxpS=Q6bn5=uQOSDv9wg@mail.gmail.com>
 <e8daa69c-8f07-6fe7-8e63-96e23f8deec6@gmail.com>
 <CAOQ4uxi7VrG8Pow=jqokXC3s5Y3bR7vqUnDwpwRNpiJfZmq8yw@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAOQ4uxi7VrG8Pow=jqokXC3s5Y3bR7vqUnDwpwRNpiJfZmq8yw@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------5q5ClvpEymD9P1HJaM9RrYIY"
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------5q5ClvpEymD9P1HJaM9RrYIY
Content-Type: multipart/mixed; boundary="------------eJj8G1CV8pkCuO0Eqwcmd2Br";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Gabriel Krisman Bertazi <krisman@collabora.com>,
 linux-man <linux-man@vger.kernel.org>, Jan Kara <jack@suse.cz>,
 Matthew Bobrowski <repnop@google.com>
Message-ID: <a230e164-9d35-6333-7b3d-1e81a6eb77a9@gmail.com>
Subject: Re: [PATCH RESEND v5] fanotify.7, fanotify_mark.2: Document
 FAN_FS_ERROR
References: <20220520180935.37796-1-krisman@collabora.com>
 <CAOQ4uxjd-xKz1=Z+165s4hX0aiBsbui2_+JAqaGr0AT0z5+scg@mail.gmail.com>
 <77ebe2f4-461a-4c3c-d53e-7a4c1f94e506@gmail.com>
 <CAOQ4uxjuVjDZN6+mvCV6Yk1=bn_oYVVxpS=Q6bn5=uQOSDv9wg@mail.gmail.com>
 <e8daa69c-8f07-6fe7-8e63-96e23f8deec6@gmail.com>
 <CAOQ4uxi7VrG8Pow=jqokXC3s5Y3bR7vqUnDwpwRNpiJfZmq8yw@mail.gmail.com>
In-Reply-To: <CAOQ4uxi7VrG8Pow=jqokXC3s5Y3bR7vqUnDwpwRNpiJfZmq8yw@mail.gmail.com>

--------------eJj8G1CV8pkCuO0Eqwcmd2Br
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGksIEFtaXIhDQoNCk9uIDYvMTcvMjIgMTQ6MzcsIEFtaXIgR29sZHN0ZWluIHdyb3RlOg0K
PiBJIHNlZSB5b3UgZmluYWxseSBtYW5hZ2VkIHRvIGZsb3cgdGhpcyBpbnRvIGtlcm5lbC5v
cmcgcmVwby4gWWF5ISA6KQ0KDQo6KQ0KDQo+Pj4gRkFOX0ZTX0VSUk9SIHY1LjE2IFtmYW4t
ZnMtZXJyb3JdDQo+Pg0KPj4gVGhpcyBvbmUuICBMb29rcyBnb29kIHRvIG1lLg0KPj4NCj4g
DQo+IFJlYmFzZWQgb24gdG9wIG9mIHVwc3RyZWFtLCBmaXhlZCB0aGUgZmV3IG1pbm9yIG5p
dHMNCj4geW91IHBvaW50ZWQgb3V0IGFuZCBwdXNoIHRvOg0KPiANCj4gaHR0cHM6Ly9naXRo
dWIuY29tL2FtaXI3M2lsL21hbi1wYWdlcy9jb21taXRzL2Zhbi1mcy1lcnJvcg0KPiANCj4g
Q2FuIHlvdSBwbGVhc2UgYXBwbHk/DQoNCkNvdWxkIHlvdSBwbGVhc2Ugc2VuZCBpdCBhcyBh
IHBhdGNoIHNldCB0byB0aGUgbGlzdD8NClRoYXQgaGVscHMgYXZvaWRpbmcgZXJyb3JzIGZy
b20gbXkgc2lkZS4NCg0KPj4+IEFuZCBJIGhhdmUgbW9yZSBjaGFuZ2VzIGZvciB1cGNvbWlu
ZyB2NS4xOS4uLiA+DQo+IA0KPiBJIGhhdmUgYSBxdWVzdGlvbiBmb3IgeW91IHJlZ2FyZGlu
ZyBuZXcgVUFQSSwgc3VjaCBhcw0KPiBGQU5fTUFSS19FVklDVEFCTEUgdGhhdCBnb3QgbWVy
Z2VkIHRvIHY1LjE5LXJjMS4NCj4gDQo+IE9mdGVuLCBNaWNoYWVsIHdvdWxkIG5vdCB3YW50
IHRvIG1lcmdlIFVBUEkgY2hhbmdlcyB0bw0KPiBtYW4gcGFnZXMgYmVmb3JlIC4wIHJlbGVh
c2UsIGJlY2F1c2UgVUFQSSBjaGFuZ2VzIGNvdWxkDQo+IGJlIHJldmVydGVkIGJlZm9yZSBm
aW5hbCByZWxlYXNlICh3aGljaCBoYXBwZW5lZCBmb3IgZmFub3RpZnkpLg0KDQpUaGF0IG1h
a2VzIHNlbnNlLg0KDQo+IEkgc3RpbGwgd2FudCB0byBwb3N0IHRob3NlIG1hbiBwYWdlIHBh
dGNoZXMgZm9yIHJldmlldyBlYXJseSwNCg0KVGhhdCBhbHNvIG1ha2VzIHNlbnNlLg0KDQo+
IGJ1dCBkb24ndCB3YW50IHRvIG1lc3MgdXAgeW91ciBwYXRjaCByZXZpZXcgcHJvY2Vzcy4g
Pg0KPiBJIGd1ZXNzIGlmIEkgcG9zdCB0aGVtIGFzIFtSRkNdIGl0IHdpbGwgYmUgYSBnb29k
IHNpZ24gZm9yIHlvdSBub3QNCj4gdG8gbWVyZ2UgdGhlbSB1bnRpbCB0aGUgLjAgcmVsZWFz
ZT8NCj4gU2hvdWxkIEkgc2ltcGx5IHVzZSB0aGUgc3ViamVjdCAiRmFub3RpZnkgdXBkYXRl
ZCBmb3IgdjUuMTkiPw0KDQpbUkZDXSBzZWVtcyBnb29kIHRvIG1lIGZvciB0aGF0IHB1cnBv
c2UgKEkgYWxzbyB1c2UgaXQgZm9yIHBhdGNoZXMgdGhhdCANCnNob3VsZG4ndCBiZSBhcHBs
aWVkKS4gIElmIHlvdSB3YW50IHRvIG1ha2Ugc3VyZSBJIGRvbid0IGFwcGx5IGl0IGJ5IA0K
YWNjaWRlbnQgKHdoaWNoIG1heSBoYXBwZW4pLCB5b3UgY2FuIGFsc28gYWRkIGEgbGluZSBp
biB0aGUgZW1haWwgbm90aW5nIA0KdGhhdCwgYnV0IG5vcm1hbGx5LCBSRkMgc2hvdWxkIGJl
IGVub3VnaC4NCg0KPiANCj4gRG8geW91IGhhdmUgYSBkaWZmZXJlbnQgdmlldyBvbiB0aGUg
bWF0dGVyPw0KPiBEb24ndCBjYXJlIGF0IGFsbD8gOy0pDQoNCkhlaCA6KQ0KDQpJIHdvbmRl
ciBzb21ldGltZXMgaWYgSSdtIGJlZWluZyB0b28gbXVjaCBzdHJpY3Qgd2l0aCBjb250cmli
dXRvcnMuICBJIA0KdGhpbmsgSSdtIHVzdWFsbHkgYmVpbmcgbW9yZSBzdHJpY3QgdGhhbiBN
aWNoYWVsIHdhcy4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCi0tIA0KQWxlamFuZHJvIENvbG9t
YXINCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------eJj8G1CV8pkCuO0Eqwcmd2Br--

--------------5q5ClvpEymD9P1HJaM9RrYIY
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKseGoACgkQnowa+77/
2zJYpA/+IcQIixHvT603oG1IW+hbI2cfrmXr2AIRg2Bw+TdztVHR1Uqti1QmhRGi
IFekos7q8p3Kh6Qj/Gl66m+Ta41+1fuKzuSD+/+MF5FxDPxckr9o6j8eCxxMEpXh
QExxUn1RhUPeAvi69ehiTnSc5vfSznfrKjxbG4hUc1mtnhP7HnvKo2IIzG/uB0BH
shAwcI4oXoSNT6l4IjohES1r8EFe9fc14C4fh/cTiwOVYIaoyBT8erlCTuXw7BNX
Ih9W6BOMwb5tkO50nkq5XqjK6VsUnEFyBKWtPwqhXg1ViIXhUYVz3xHTfvHeOBgN
Y/yJZyBn7kRdxgsnYVmvFB8VweJ8TYAlfmlfGsR4fSbb3dxm0vZxpMxvGh0NouJi
ezTYh7MBKlhy4NoJVd2N2jWVDqEsfDNuRQyoQrLGjeJHOvU11xLoDvTPDpBYO+iM
uUqpElV5oBUdx3pYEU4J88KWgTTvT1NX0d0Rf244f+zfU5M9w4voYT9JlDXEuTY4
Ja12vuBniQJYHTfBN4fz6dXp19gyQswGCNKYNBGft6XAETTowo/wJPw5TDjn/DKp
FTF+v7DoYWukYxqb1uCouWD0jQQASiiFi14308V2Xf+F8l4CgkVNZgMj0Ie74Jbs
FOXPOs0cNeExZfz8Cg3Wl4JQxFxAxSY/yOO8KixFWQ/Wb352s/s=
=XIPz
-----END PGP SIGNATURE-----

--------------5q5ClvpEymD9P1HJaM9RrYIY--

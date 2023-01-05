Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C7CD65F3F5
	for <lists+linux-man@lfdr.de>; Thu,  5 Jan 2023 19:48:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234999AbjAESsD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 13:48:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234525AbjAESsD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 13:48:03 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 422325E0BA
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 10:48:02 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id m8-20020a05600c3b0800b003d96f801c48so2034263wms.0
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 10:48:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rt7mHW7xha7ZP6t3FvNynj27ble7vKSG9hqyVlKZEII=;
        b=EAESby7u+thZUfGncibh44m/luw3f4/L6uEzUZZi5lHHSIOWrx9kGVpX2OPxLh6usa
         TLcUGkPVA+IuCJW3BzjwFX5EHvsZ6sk9LcZYYNkUik9NeS3/AFpI7ET3XsklRZ/6YVs4
         OFooW1kc5V7F2WAC7Qdk2PWCwnlbhauq5jpQ00hjEMzVI8ZY8eO/yg7VN1veGGxpozzM
         VgZgSunZHh6xBEg7yIjBQCl5HakdVLGcqN0aYXOtcN46rJbwSdr3n8ODY5Ft9yGyDGyH
         tnnRgWz2ahHEpCh57c/DAIk4qzZZqqE1EiK3mdDLX2Azc1cpiUlN4Hh+LMbmaAx1Ab++
         GQQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Rt7mHW7xha7ZP6t3FvNynj27ble7vKSG9hqyVlKZEII=;
        b=LryX3dvVRegWvqjIKKQbaceRfSYY2GHxKuzHA7/BfPOsXzRi4rlFE8U9E04KD3mnCy
         16QhNX+XtOsOi5T7Xk2Ckfwc46Fd3aYJ1Yj7nkcI+V7IXDlSwrW4PLTzOADV8ykiA/H3
         loOOt6pQOcJZtGe8wDICFNJ+auHkIKBsbpXylJ9kMCVLpU2f5E4OTwaGcBaY6vnX96Dl
         SHY0uDd43q0DuL2orks/OmmSN9NlRZ711PcbUnGjK9CfceJ9D/moOoRQcKtTshVfHNMF
         8DKVdLSIxP8NhVZ9pVnbytzjPWYYEHDW6gxyDbW7082kBwXGedx5yZKD9evAGTyf6DPO
         ph+w==
X-Gm-Message-State: AFqh2kqn1BfD0iz51baWjRQxrOi1CdrFLi+kNuPNdVcGVV0pV1OlWO+8
        VOoi1lSUYDwTN4QphH7wkDs=
X-Google-Smtp-Source: AMrXdXslPlvuVH9V6DpPfGShM4wVkSxFIXwQD83YhYhdWdKo7g4nTpnuoMmBzJzNfVRo5XhPWlX1Aw==
X-Received: by 2002:a05:600c:1c20:b0:3d2:2f48:9443 with SMTP id j32-20020a05600c1c2000b003d22f489443mr36481617wms.15.1672944480829;
        Thu, 05 Jan 2023 10:48:00 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o9-20020a05600c510900b003d98f92692fsm3942292wms.17.2023.01.05.10.48.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Jan 2023 10:48:00 -0800 (PST)
Message-ID: <72facfb2-c219-1558-181c-8ea06b2d1283@gmail.com>
Date:   Thu, 5 Jan 2023 19:47:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] index.3, memchr.3, strchr.3, string.3, strpbrk.3,
 strsep.3, strspn.3, strstr.3, strtok.3: Deprecate index(3) and rindex(3)
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>
References: <20230105184446.10141-1-alx@kernel.org>
In-Reply-To: <20230105184446.10141-1-alx@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------GHgnzKyY3vo8367LjqfO8AoX"
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------GHgnzKyY3vo8367LjqfO8AoX
Content-Type: multipart/mixed; boundary="------------srzA1iANcmQeK1D1uO7xKEy5";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>
Message-ID: <72facfb2-c219-1558-181c-8ea06b2d1283@gmail.com>
Subject: Re: [PATCH] index.3, memchr.3, strchr.3, string.3, strpbrk.3,
 strsep.3, strspn.3, strstr.3, strtok.3: Deprecate index(3) and rindex(3)
References: <20230105184446.10141-1-alx@kernel.org>
In-Reply-To: <20230105184446.10141-1-alx@kernel.org>

--------------srzA1iANcmQeK1D1uO7xKEy5
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

aW5kZXgoMykgICAgICAgICAgICAgICAgICAgTGlicmFyeSBGdW5jdGlvbnMgTWFudWFsICAg
ICAgICAgICAgICAgICAgIGluZGV4KDMpDQoNCk5BTUUNCiAgICAgICAgaW5kZXgsIHJpbmRl
eCAtIGxvY2F0ZSBjaGFyYWN0ZXIgaW4gc3RyaW5nDQoNCkxJQlJBUlkNCiAgICAgICAgU3Rh
bmRhcmQgQyBsaWJyYXJ5IChsaWJjLCAtbGMpDQoNClNZTk9QU0lTDQogICAgICAgICNpbmNs
dWRlIDxzdHJpbmdzLmg+DQoNCiAgICAgICAgW1tkZXByZWNhdGVkXV0gY2hhciAqaW5kZXgo
Y29uc3QgY2hhciAqcywgaW50IGMpOw0KICAgICAgICBbW2RlcHJlY2F0ZWRdXSBjaGFyICpy
aW5kZXgoY29uc3QgY2hhciAqcywgaW50IGMpOw0KDQpERVNDUklQVElPTg0KICAgICAgICBp
bmRleCgpIGlzIGlkZW50aWNhbCB0byBzdHJjaHIoMykuDQoNCiAgICAgICAgcmluZGV4KCkg
aXMgaWRlbnRpY2FsIHRvIHN0cnJjaHIoMykuDQoNCiAgICAgICAgVXNlIHN0cmNocigzKSBh
bmQgc3RycmNocigzKSBpbnN0ZWFkIG9mIHRoZXNlIGZ1bmN0aW9ucy4NCg0KU1RBTkRBUkRT
DQogICAgICAgIDQuM0JTRDsgIG1hcmtlZCAgYXMgIExFR0FDWSAgaW4gUE9TSVguMeKAkDIw
MDEuICBQT1NJWC4x4oCQMjAwOCByZW1vdmVzIHRoZQ0KICAgICAgICBzcGVjaWZpY2F0aW9u
cyBvZiBpbmRleCgpIGFuZCByaW5kZXgoKSwgcmVjb21tZW5kaW5nIHN0cmNocigzKSBhbmQg
c3Ry4oCQDQogICAgICAgIHJjaHIoMykgaW5zdGVhZC4NCg0KU0VFIEFMU08NCiAgICAgICAg
c3RyY2hyKDMpLCBzdHJyY2hyKDMpDQoNCkxpbnV4IG1hbuKAkHBhZ2VzICh1bnJlbGVhc2Vk
KSAgICAgICAgKGRhdGUpICAgICAgICAgICAgICAgICAgICAgICAgICAgIGluZGV4KDMpDQo=


--------------srzA1iANcmQeK1D1uO7xKEy5--

--------------GHgnzKyY3vo8367LjqfO8AoX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO3G1QACgkQnowa+77/
2zKv5BAAnqXH6L4Nk8EyOcEq5w58ds85yc04CpjU43+n6sj2aTOnWdP6lOmt3N1f
JjPoyFgEXAAoU3Dou7JMZieQXFWdgY2PS6vKfv1MEpz8HlD7KqstBYIXHmfFdY36
g0y/KvfegZaT0lRk3OaLoWpO6zI1Iq0Xwojn63yAwNtgIeAUyCUSLWpkhSYEXX5w
zu8N8xkPYaYKQ0lcOq/5ZPGNyvM1iNOBEekObOzcCm1wzTUZArqu7Kh8y6oFGLNN
Aruzp21lNeg2tIzBQ0TsnxiDVIgPjmYWHrSCn3EQgC8ng0l6GMxaBUXyvcpL/F6e
Z1DJYGwcDockW3CCG9IKheH332sB43LAUN5E42jIR6NM0o/qkgHC2ynG1TxYwuNM
4l8HsXSrdjjTvn2c5LyJwgQ7wHZZ+7sMV21E/EOyGhu+Z0zaETa0PGIJzFNgkDzu
2cGYL5atiQfF7Iadgkm+Xu2RaMyeEEZBTpmZyxIZs2OifhiQFP7jYNxDqTkwf/KR
VfN3P6r9Egg3oVq7bjxPRF6XxlO7CazsXGVlXegcI+SX1nnksbB86+D/GVZsf0FQ
qMMqy+1RPkFxNnwKwQzt6tq3WWHZeBRSjEK1BIuhiQU1B9OrpnUQD1U7UGMIishS
BPGtOLt4AjN6x1m4Wrk3iJ2/4b8I2iFCGEVoPFBUvDbJp01UMuE=
=SU4A
-----END PGP SIGNATURE-----

--------------GHgnzKyY3vo8367LjqfO8AoX--

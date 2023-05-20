Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D469970A77E
	for <lists+linux-man@lfdr.de>; Sat, 20 May 2023 13:18:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230527AbjETLSK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 May 2023 07:18:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229511AbjETLSJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 May 2023 07:18:09 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58E11134
        for <linux-man@vger.kernel.org>; Sat, 20 May 2023 04:18:08 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-510ede0f20aso3885926a12.3
        for <linux-man@vger.kernel.org>; Sat, 20 May 2023 04:18:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sc3d.org; s=google; t=1684581487; x=1687173487;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2ZuYqhjRSDxn8fsjsZVKClPFyBs24OZv3JguZKMs6Wo=;
        b=vY678dxVJ2/VMI7FOrx1uspfGPyR3F6TZbXxRL5IrjTCUcl5RdcZjaZgb/89ol14rq
         fuDBI7gVxGfiSfHtHttOUgAeHaU9rROhoZilHR3wMldl2/PHSyWhvBfv7V+c7AkVGuM+
         rvjsQ+2A26QTFrafYJpgy4llb0aKMQopX4jNY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684581487; x=1687173487;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2ZuYqhjRSDxn8fsjsZVKClPFyBs24OZv3JguZKMs6Wo=;
        b=aE6mMj5CvfPSCb7TtP+YbpYV0EQvZhUsdBOnCsdytfg9UjmrpcatL/XbWzQTfygbkw
         1JGE5QF0NeETNbWx8LS1voHpuEk5xeWMrdA7NHh0aEUKpv0qd90Y2qj3Dnj2nN9K2GeK
         IYCQZqk8asDVSgL31TzshHkSUPhZGKrWKzKSarzfogwg9mg4CV7cEH2hiYTR9vneRLIO
         VeioiH6w9eKB7vDuO8fRLJ7l466s14claS5Ak3vsB8gll1BmSd+umJWBZ6uVyQt4lmCz
         fRibKaaSbTvvqUxM7akobOZMBV9y0DkxtDNFFwgReVKn1iWV2hgbVxcQG8EA2mIp+Yiz
         sJ8Q==
X-Gm-Message-State: AC+VfDyHX7kgIdG9IR42LzXGaIvmZwtWhvU7QAM9rxMsPy5yshq7Fkok
        Zy6AkMsuP6pjSDEJpcMFwc2bCipB/dCOnOLBrOJRkV8IRRZbwYBaSvk=
X-Google-Smtp-Source: ACHHUZ5YubwLI3ZIrXIeTspnwO0p9NC97A+K7odOG1sm/Rz8tYKNg3tUomH+Q/oQ1MGLmCoykU3F36VfIxZt2IhMGJA=
X-Received: by 2002:a17:907:2cc7:b0:95e:c549:9ace with SMTP id
 hg7-20020a1709072cc700b0095ec5499acemr3945173ejc.62.1684581486782; Sat, 20
 May 2023 04:18:06 -0700 (PDT)
MIME-Version: 1.0
From:   Reuben Thomas <rrt@sc3d.org>
Date:   Sat, 20 May 2023 12:17:55 +0100
Message-ID: <CAOnWdoiYKybuDioeG01szmZAL_zkoU4RTqiP=ca6z6bqVj+OQA@mail.gmail.com>
Subject: [patch] iconv.3: clarify behavior when input is untranslatable
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Linux man pages mailing list <linux-man@vger.kernel.org>,
        Bruno Haible <bruno@clisp.org>
Content-Type: multipart/mixed; boundary="0000000000001d9cbc05fc1e31bf"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--0000000000001d9cbc05fc1e31bf
Content-Type: text/plain; charset="UTF-8"

I attach a patch for
https://bugzilla.kernel.org/show_bug.cgi?id=217059 as requested by
Alejandro.

-- 
https://rrt.sc3d.org

--0000000000001d9cbc05fc1e31bf
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-iconv.3-clarify-the-behavior-when-input-is-untransla.patch"
Content-Disposition: attachment; 
	filename="0001-iconv.3-clarify-the-behavior-when-input-is-untransla.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_lhvwb01a0>
X-Attachment-Id: f_lhvwb01a0

RnJvbSA3MmI2MjNlZTJjMzJkYTk2YTI5NzJhOWRjZTQzYTU1NGY0OTRjNWI4IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBSZXViZW4gVGhvbWFzIDxycnRAc2MzZC5vcmc+CkRhdGU6IFNh
dCwgMjAgTWF5IDIwMjMgMTI6MTA6MTEgKzAxMDAKU3ViamVjdDogW1BBVENIXSBpY29udi4zOiBj
bGFyaWZ5IHRoZSBiZWhhdmlvciB3aGVuIGlucHV0IGlzIHVudHJhbnNsYXRhYmxlCgpTZWUgaHR0
cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0yMTcwNTkKClRoZSBtYW4g
cGFnZSBkb2VzIG5vdCBmdWxseSByZWZsZWN0IHRoZSBiZWhhdmlvdXIgb2YgZ2xpYmMncyBpY29u
di4gVGhlIG1hbgpwYWdlIHNheXM6CgogIFRoZSBjb252ZXJzaW9uIGNhbiBzdG9wIGZvciBmb3Vy
IHJlYXNvbnM6CgogICAgIDEuIEFuIGludmFsaWQgbXVsdGlieXRlIHNlcXVlbmNlIGlzIGVuY291
bnRlcmVkIGluIHRoZSBpbnB1dC4gSW4gdGhpcwogICAgIGNhc2UsIGl0IHNldHMgZXJybm8gdG8g
RUlMU0VRIGFuZCByZXR1cm5zIChzaXplX3QpIC0xLiAqaW5idWYgaXMgbGVmdAogICAgIHBvaW50
aW5nIHRvIHRoZSBiZWdpbm5pbmcgb2YgdGhlIGludmFsaWQgbXVsdGlieXRlIHNlcXVlbmNlLgoK
VGhlIHBocmFzZSAiQW4gaW52YWxpZCBtdWx0aWJ5dGUgc2VxdWVuY2UgaXMgZW5jb3VudGVyZWQg
aW4gdGhlIGlucHV0IiBpcwpjb25mdXNpbmcsIGJlY2F1c2UgaXQgc3VnZ2VzdHMgdGhhdCBpdCBy
ZWZlcnMgb25seSB0byB0aGUgdmFsaWRpdHkgb2YgdGhlCmlucHV0IHBlciBzZSAoZS5nLiBhIG5v
bi1VVEYtOCBzZXF1ZW5jZSBpbiBpbnB1dCBwdXJwb3J0aW5nIHRvIGJlIFVURi04KS4KCkhvd2V2
ZXIsIGFjY29yZGluZyB0byB0aGUgb3JpZ2luYWwgYXV0aG9yIG9mIHRoZSBtYW4gcGFnZSwgQnJ1
bm8gSGFpYmxlWzFdLAppdCBhbHNvIHJlZmVycyB0byBpbnB1dCB0aGF0IGNhbm5vdCBiZSB0cmFu
c2xhdGVkIHRvIHRoZSBkZXNpcmVkIG91dHB1dAplbmNvZGluZzsgYW5kIGluZGVlZCwgZ2xpYmMn
cyBpY29udiByZXR1cm5zIEVJTFNFUSB3aGVuIHRoZSBpbnB1dCBjYW5ub3QgYmUKdHJhbnNsYXRl
ZCwgZXZlbiB0aG91Z2ggaXQgaXMgdmFsaWQuCgpUaGlzIHBhdGNoIGFkZHMgbGFuZ3VhZ2UgdGhh
dCByZWZsZWN0cyB0aGUgYWN0dWFsIGJlaGF2aW9yLgoKWzFdIGh0dHBzOi8vc291cmNld2FyZS5v
cmcvYnVnemlsbGEvc2hvd19idWcuY2dpP2lkPTI5OTEzI2M0CgpTaWduZWQtb2ZmLWJ5OiBSZXVi
ZW4gVGhvbWFzIDxycnRAc2MzZC5vcmc+ClN1Z2dlc3RlZC1ieTogQWxlamFuZHJvIENvbG9tYXIg
PGFseEBrZXJuZWwub3JnPgotLS0KIG1hbjMvaWNvbnYuMyB8IDMgKystCiAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvbWFuMy9pY29u
di4zIGIvbWFuMy9pY29udi4zCmluZGV4IDY2ZjU5YjhjMy4uZTg2OTRjYTEyIDEwMDY0NAotLS0g
YS9tYW4zL2ljb252LjMKKysrIGIvbWFuMy9pY29udi4zCkBAIC03Myw3ICs3Myw4IEBAIHRvIGFu
IHVwZGF0ZSB0byB0aGUgY29udmVyc2lvbiBzdGF0ZSB3aXRob3V0IHByb2R1Y2luZyBhbnkgb3V0
cHV0IGJ5dGVzOwogc3VjaCBpbnB1dCBpcyBjYWxsZWQgYSBcZklzaGlmdCBzZXF1ZW5jZVxmUC4K
IFRoZSBjb252ZXJzaW9uIGNhbiBzdG9wIGZvciBmb3VyIHJlYXNvbnM6CiAuSVAgXFtidV0gMwot
QW4gaW52YWxpZCBtdWx0aWJ5dGUgc2VxdWVuY2UgaXMgZW5jb3VudGVyZWQgaW4gdGhlIGlucHV0
LgorQW4gbXVsdGlieXRlIHNlcXVlbmNlIGlzIGVuY291bnRlcmVkIGluIHRoZSBpbnB1dCB3aGlj
aCBpcyBlaXRoZXIgaW52YWxpZCwKK29yIGNhbm5vdCBiZSB0cmFuc2xhdGVkIHRvIHRoZSBjaGFy
YWN0ZXIgZW5jb2Rpbmcgb2YgdGhlIG91dHB1dC4KIEluIHRoaXMgY2FzZSwKIGl0IHNldHMgXGZJ
ZXJybm9cZlAgdG8gXGZCRUlMU0VRXGZQIGFuZCByZXR1cm5zCiAuSVIgKHNpemVfdClcIFwtMSAu
Ci0tIAoyLjM0LjEKCg==
--0000000000001d9cbc05fc1e31bf--

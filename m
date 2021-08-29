Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B387E3FAE47
	for <lists+linux-man@lfdr.de>; Sun, 29 Aug 2021 21:57:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234667AbhH2T6L (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 29 Aug 2021 15:58:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234080AbhH2T6K (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 29 Aug 2021 15:58:10 -0400
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1979BC061575;
        Sun, 29 Aug 2021 12:57:18 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id e1so7279855plt.11;
        Sun, 29 Aug 2021 12:57:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=IzTQ3K1UDT6PxsDmdWkfX0zpptynoMb55Wy2dCfWnGc=;
        b=UmV/zVByDUjtMx83vlE4Q1BQo06mmUmBjaxZYfoWvnXv8U+3OW7bllFQ7JyxktKY5z
         FQVxQrgVgv9MRb9wAGQAWWCIisONgl3S1AOlpDUpIeemGIWGQNpzwqtGBKb05DiMNN+/
         ogqJW+hSnLXuQW1xzMgQOP11135Vi0EUpUC7m0kERN7E3eDaSbTMqOn/fDqVflZ3pES6
         zd/j7A6zXEcq1REI4SXhID4cwosegjDzmeVAni4/bPps2gb1vlYP3ncItoI2dTzUs+ra
         rYjuEOS4IJl00S0qSASyWvdIw8HfR8xAZTERLtlXpuTYZRc8XZj91oTI0Ya4W+m5vFuW
         tlRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=IzTQ3K1UDT6PxsDmdWkfX0zpptynoMb55Wy2dCfWnGc=;
        b=Bu4QG4SKO3LUELbGDIjZs4WD/Kza0Sr7WapSB7FSoNS+fz3O7DCmNXql6aYTkAKjdG
         ALS4ch9CE51C+g/Ss3E3oKDmrmwubPKNSXZJIU9ADvrFw9s0nWrQx09az2667PU+Wn6u
         HExiMMSMUVTysYKrbqenFq1uKzqvOFEJgOqtKFPAFaWxEMDvs/pZc76feZUtACDg+3BL
         MxBNegBRyiYjd9B0NYWbD+uQ7BV7JmjwLWGcw1yfTJBoMKNR6vOMpVdTxTUws+l5ZDtD
         m2RguBAWySgvGiM80LW8uwzN8Ys7tUQvkA1E+HfLYUYbd6LfmfLcjlSWrd/fB591nfEE
         TogQ==
X-Gm-Message-State: AOAM533LjSz3rtD7FGCp149ddenU7m8w64J8Y8gC+oaEAOariWTEmoZh
        +o/2y2jLHh2Evqnb8+FzvLPyIleK/Wiii/M9mp042WN+0l1RlmM=
X-Google-Smtp-Source: ABdhPJz6tYAqzfpO4O4+0S+Vs7fkBfnu8RUkvJX39luTseIctLBIJoijuWdF5qEIJShmaZUVjkoEKNIBUE4qq8ZKOr0=
X-Received: by 2002:a17:903:310a:b0:133:9bb6:98bd with SMTP id
 w10-20020a170903310a00b001339bb698bdmr18475284plc.19.1630267037460; Sun, 29
 Aug 2021 12:57:17 -0700 (PDT)
MIME-Version: 1.0
From:   Andrew Wock <ajwock@gmail.com>
Date:   Sun, 29 Aug 2021 15:57:06 -0400
Message-ID: <CAACtx1b_v3nbv8EkAQ1f7ee=yt3ECm_a6kb1KNdBPZ5F20ndFw@mail.gmail.com>
Subject: [patch] clone.2: Add EACCES with CLONE_INTO_CGROUP + clone3 to ERRORS
To:     linux-man@vger.kernel.org, alx.manpages@gmail.com,
        mtk.manpages@gmail.com
Cc:     christian@brauner.io, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="000000000000a8a7f305cab81f4a"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--000000000000a8a7f305cab81f4a
Content-Type: text/plain; charset="UTF-8"

Resending because it's my first time mailing the lkml and I used html.
Reattempting w/ gmail's plaintext mode.  I apologise if this is
reaching you twice.

I noticed that clone3 can send the EACCES errno after I wrote a
program that used clone3 with the CLONE_INTO_CGROUP flag.  To me, it's
important to know what kind of failure occurred if the clone3 fails,
so I was glad that a unique errno is set for this case, but it wasn't
documented on the clone man page.

I've attached a patch and a test program.

Test program is attached as clone3_doc.c.  Create
/sys/fs/cgroup/not-allowed as root, then run the program.  It should
set errno to EACCES.

Thanks,
Andrew Wock

--000000000000a8a7f305cab81f4a
Content-Type: text/plain; charset="US-ASCII"; name="clone3_doc.c"
Content-Disposition: attachment; filename="clone3_doc.c"
Content-Transfer-Encoding: base64
Content-ID: <f_ksxmvzkw1>
X-Attachment-Id: f_ksxmvzkw1

I2luY2x1ZGUgPHN0ZGlvLmg+DQojaW5jbHVkZSA8ZXJybm8uaD4NCiNpbmNsdWRlIDxzdGRsaWIu
aD4NCiNpbmNsdWRlIDxzdHJpbmcuaD4NCiNpbmNsdWRlIDxzaWduYWwuaD4NCiNpbmNsdWRlIDxm
Y250bC5oPg0KDQojaW5jbHVkZSA8bGludXgvc2NoZWQuaD4gICAgLyogRGVmaW5pdGlvbiBvZiBz
dHJ1Y3QgY2xvbmVfYXJncyAqLw0KI2luY2x1ZGUgPHNjaGVkLmg+ICAgICAgICAgIC8qIERlZmlu
aXRpb24gb2YgQ0xPTkVfKiBjb25zdGFudHMgKi8NCiNpbmNsdWRlIDxzeXMvc3lzY2FsbC5oPiAg
ICAvKiBEZWZpbml0aW9uIG9mIFNZU18qIGNvbnN0YW50cyAqLw0KI2luY2x1ZGUgPHVuaXN0ZC5o
Pg0KDQovKg0KICogUHJlY29uZGl0aW9uczoNCiAqIC0gL3N5cy9mcy9jZ3JvdXAvbm90LWFsbG93
ZWQgaXMgYSByZWFsIGNncm91cC4NCiAqIC0gWW91IGFyZSBub3Qgcm9vdCBhbmQgZG8gbm90IGhh
dmUgd3JpdGUgcGVybWlzc2lvbnMgdG8NCiAqICAgL3N5cy9mcy9jZ3JvdXAvbm90LWFsbG93ZWQv
Y2dyb3VwLnByb2NzDQogKi8NCmludCBtYWluKCkgew0KICBwaWRfdCBwaWQ7DQogIGludCBmZDsN
CiAgc3RydWN0IGNsb25lX2FyZ3MgY2xfYXJncyA9IHswfTsNCiAgY2hhciAqY2dQYXRoID0gIi9z
eXMvZnMvY2dyb3VwL25vdC1hbGxvd2VkIjsNCg0KICBmZCA9IG9wZW4oY2dQYXRoLCBPX1JET05M
WSk7DQogIGlmIChmZCA9PSAtMSkgew0KICAgIGZwcmludGYoc3RkZXJyLCAiQ291bGQgbm90IG9w
ZW4gY2dyb3VwICVzOiAlc1xuIiwgY2dQYXRoLCBzdHJlcnJvcihlcnJubykpOw0KICAgIGV4aXQo
MSk7DQogIH0NCg0KICBjbF9hcmdzLmV4aXRfc2lnbmFsID0gU0lHQ0hMRDsNCiAgY2xfYXJncy5m
bGFncyA9IENMT05FX0lOVE9fQ0dST1VQOw0KICBjbF9hcmdzLmNncm91cCA9IGZkOw0KICBwaWQg
PSBzeXNjYWxsKFNZU19jbG9uZTMsICZjbF9hcmdzLCBzaXplb2YoY2xfYXJncykpOw0KICBpZiAo
cGlkID09IC0xKSB7DQogICAgaWYgKGVycm5vID09IEVBQ0NFUykgew0KICAgICAgcHJpbnRmKCJF
QUNDRVMgZGV0ZWN0ZWRcbiIpOw0KICAgICAgZXhpdCgwKTsNCiAgICB9DQogICAgZnByaW50Zihz
dGRlcnIsICJDb3VsZCBub3QgY2xvbmUgaW50byBjZ3JvdXA6ICVzXG4iLCBzdHJlcnJvcihlcnJu
bykpOw0KICB9IGVsc2UgaWYgKHBpZCA9PSAwKSB7DQogICAgZnByaW50ZihzdGRlcnIsICJBcmUg
eW91IHJvb3QsIG9yIGRvIHlvdSBoYXZlIHdyaXRlIGFjY2VzcyB0byAlcz9cbiIsIGNnUGF0aCk7
DQogIH0NCiAgZXhpdCgxKTsNCn0NCg==
--000000000000a8a7f305cab81f4a
Content-Type: application/octet-stream; name="clone.2.diff"
Content-Disposition: attachment; filename="clone.2.diff"
Content-Transfer-Encoding: base64
Content-ID: <f_ksxmvxos0>
X-Attachment-Id: f_ksxmvxos0

ZGlmZiAtLWdpdCBhL21hbjIvY2xvbmUuMiBiL21hbjIvY2xvbmUuMg0KaW5kZXggZTM4MWRhMTY1
Li44ZjY1ZDlmZWMgMTAwNjQ0DQotLS0gYS9tYW4yL2Nsb25lLjINCisrKyBiL21hbjIvY2xvbmUu
Mg0KQEAgLTEyMDksNiArMTIwOSwxNiBAQCBpbiB0aGUgY2FsbGVyJ3MgY29udGV4dCwgbm8gY2hp
bGQgcHJvY2VzcyBpcyBjcmVhdGVkLCBhbmQNCiBpcyBzZXQgdG8gaW5kaWNhdGUgdGhlIGVycm9y
Lg0KIC5TSCBFUlJPUlMNCiAuVFANCisuQlIgRUFDQ0VTICIgKCIgY2xvbmUzICIoKSBvbmx5KSIN
CisuQiBDTE9ORV9JTlRPX0NHUk9VUA0KK3dhcyBzcGVjaWZpZWQgaW4NCisuSVIgY2xfYXJncy5m
bGFncyAsDQorYnV0IHRoZSByZXN0cmljdGlvbnMgKGRlc2NyaWJlZCBpbg0KKy5CUiBjZ3JvdXBz
ICg3KSkNCitvbiBwbGFjaW5nIHRoZSBjaGlsZCBwcm9jZXNzIGludG8gdGhlIHZlcnNpb24gMiBj
Z3JvdXAgcmVmZXJyZWQgdG8gYnkNCisuSVIgY2xfYXJncy5jZ3JvdXANCithcmUgbm90IG1ldC4N
CisuVFANCiAuQiBFQUdBSU4NCiBUb28gbWFueSBwcm9jZXNzZXMgYXJlIGFscmVhZHkgcnVubmlu
Zzsgc2VlDQogLkJSIGZvcmsgKDIpLg==
--000000000000a8a7f305cab81f4a--

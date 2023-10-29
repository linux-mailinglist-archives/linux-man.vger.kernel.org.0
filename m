Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E3C527DAE5A
	for <lists+linux-man@lfdr.de>; Sun, 29 Oct 2023 21:58:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229533AbjJ2U6E (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 29 Oct 2023 16:58:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229512AbjJ2U6E (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 29 Oct 2023 16:58:04 -0400
X-Greylist: delayed 182 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 29 Oct 2023 13:58:01 PDT
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [85.215.255.24])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DABD9B6
        for <linux-man@vger.kernel.org>; Sun, 29 Oct 2023 13:58:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698612716; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=g8bnijU+ZFFAupQR46acnfdkbTdJ7TlI6rtOylEc5vFqajh4y5n5E7Ol5MJMwVNKDm
    QyFe2FfKqJjnWacQtVP8szCL6t2OEx8n6a2FJNXj7hqos25TIi3EP4vqtxDHv4igQMBc
    qAHOggr+d1bOaeliZjEoUjXml8Pl+MaY2Mw/HiloOAtgjZym1a8JoVZd1MZWUPFsx23J
    uTKvftAlpEeRBwr0zmL/7ilu/Zwfl8rjDDPAXUqCL7lMZ596OElS3OgX3sPYhK0TIjdf
    KmKLpvDSzxoj11yulDcKXzWaDogzSL3blkKYfJZHgetysfFc45dmU9FCoSsEvtFoi1DW
    7XYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1698612716;
    s=strato-dkim-0002; d=strato.com;
    h=Message-ID:Date:Subject:To:From:Cc:Date:From:Subject:Sender;
    bh=suiLAyKhOMli0y/CpRscx+Ded5OO8FpPkmJA108r7W0=;
    b=kxEz1AfeiW9gVe+isX0YfX23HfhaJ8t/NVTvVqKxq71pSnr8I1dXxd1Is1QAmPzrcb
    ukcu7n7Cqqgxfy9EmCQ6iQ2vun0GQG6jlLgwU8MWjkp4CpaDUc7WKpCRgbgpz6IItIw9
    9AKJKN37JdifWlOy+ic3ULhtZZS1ooUGDcbPjJ08t92veA0K5wHjUXJrB/PElHuUfakR
    OE5OBPQqtckFMB4LlSFEcRA9r5iJK1wth80mxgbWd50s/ieYse6F5B1JW4i6fal0qbU3
    LbCR3A9KmBv3ezA5G52bnFiJAbb8qNDndpbsO+v7B0Ja3Oqnhx4U8O2qUj8doTMjnMtS
    CLCQ==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1698612716;
    s=strato-dkim-0002; d=clisp.org;
    h=Message-ID:Date:Subject:To:From:Cc:Date:From:Subject:Sender;
    bh=suiLAyKhOMli0y/CpRscx+Ded5OO8FpPkmJA108r7W0=;
    b=QVJiZp31w1PFhbw+luBZSpSC/zx12dRaqZsrgfVPJ3vetEBUusqZim4TfNqVe5CgKx
    KiW0F10aJKDc0AhjXHLGbIV+EyCZ3x4mhG3LSbI6Dp8m/ARnNSUoJo8J1JfySueHgk6E
    ixKyL+vWIF5LNZYhirFa2Xmfwr9yD0KwjIpeiSOv/iuWlhdOGUE1r/tSzAx1aMJZefIc
    58nDOP/GkvrcXoxj8IXLi083UYhvsa/blOVtE24zz0WCjhKQPGxy5vAVrbGqYjabEH6E
    F4ALk0AuoUWmEAXvSzE93TH1ojUz7j99NGHLLd4GvDddbk9dLL0gYFbHpJXY+NCLxhpr
    vHhQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1698612716;
    s=strato-dkim-0003; d=clisp.org;
    h=Message-ID:Date:Subject:To:From:Cc:Date:From:Subject:Sender;
    bh=suiLAyKhOMli0y/CpRscx+Ded5OO8FpPkmJA108r7W0=;
    b=w/uBVjZXlkPjxhB5VjC1bj0dzVumAv78H67n2O7pw11SpP2Gc0IbpIUcNPu0oy9QEI
    OBcZxCxTG0hGOEZOFMDA==
X-RZG-AUTH: ":Ln4Re0+Ic/6oZXR1YgKryK8brlshOcZlIWs+iCP5vnk6shH0WWb0LN8XZoH94zq68+3cfpPC2vL5Du0M9wTVIv3bTqH8i6Ye9w=="
Received: from nimes.localnet
    by smtp.strato.de (RZmta 49.9.1 AUTH)
    with ESMTPSA id ecf079z9TKpuIDc
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
        (Client did not present a certificate);
    Sun, 29 Oct 2023 21:51:56 +0100 (CET)
From:   Bruno Haible <bruno@clisp.org>
To:     linux-man@vger.kernel.org, alx.manpages@gmail.com
Subject: [PATCH] prctl.2: Fix typo
Date:   Sun, 29 Oct 2023 21:51:55 +0100
Message-ID: <4678853.9Mp67QZiUf@nimes>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="nextPart12752715.aFP6jjVeTY"
Content-Transfer-Encoding: 7Bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.

--nextPart12752715.aFP6jjVeTY
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

The synopsis of the prctl.2 page has:

       int prctl(int option, ...

This makes no sense, because
  - the first argument is not optional; it is mandatory.
  - the title of the page is "operations on a process or thread".

It is thus clear that the first argument indicates the operation to perform.

Find attached the correction.


--nextPart12752715.aFP6jjVeTY
Content-Disposition: attachment; filename="0001-prctl.2-Fix-typo.patch"
Content-Transfer-Encoding: 7Bit
Content-Type: text/x-patch; charset="UTF-8"; name="0001-prctl.2-Fix-typo.patch"

From a373bed1d7cd571cffc5ea1a8c6377efbe8fa51c Mon Sep 17 00:00:00 2001
From: Bruno Haible <bruno@clisp.org>
Date: Sun, 29 Oct 2023 21:46:49 +0100
Subject: [PATCH] prctl.2: Fix typo

---
 man2/prctl.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/prctl.2 b/man2/prctl.2
index f72aeb700..b5be0def6 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -46,7 +46,7 @@ Standard C library
 .nf
 .B #include <sys/prctl.h>
 .PP
-.BI "int prctl(int " option ", ..."
+.BI "int prctl(int " operation ", ..."
 .BI "          \fR/*\fP unsigned long " arg2 ", unsigned long " arg3 ,
 .BI "          unsigned long " arg4 ", unsigned long " arg5 " \fR*/\fP );"
 .fi
-- 
2.34.1


--nextPart12752715.aFP6jjVeTY--




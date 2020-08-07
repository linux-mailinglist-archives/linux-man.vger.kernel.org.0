Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 01DAD23E8E7
	for <lists+linux-man@lfdr.de>; Fri,  7 Aug 2020 10:30:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726382AbgHGIaL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Aug 2020 04:30:11 -0400
Received: from us-smtp-1.mimecast.com ([207.211.31.81]:53569 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1727101AbgHGIaL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Aug 2020 04:30:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1596789010;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type;
        bh=3wgRp3qqnRAOy+euitkhJbhM028nnx02EgZJs1Iovzk=;
        b=bVlyqOdcFLiUiqvkBj885od6pdHp8zx4BshUB8YX6ycCSsF7g/HSRDMf05m9US7NFzv9CM
        4B4bg2aJ/Pc83GEScn8H0QR3zhNSS5v6aCYjlUeIcl7Kn5gyLFoO4uP3DAvaKN/okyWbnO
        RaRpsIX4KTS6Ddd4ZkObcaNNIquCQqc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-33-llJOKjN2OnaLxGBmsKMN0g-1; Fri, 07 Aug 2020 04:30:08 -0400
X-MC-Unique: llJOKjN2OnaLxGBmsKMN0g-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 47BD61005510;
        Fri,  7 Aug 2020 08:30:07 +0000 (UTC)
Received: from localhost (unknown [10.33.36.145])
        by smtp.corp.redhat.com (Postfix) with ESMTP id DF3AB1001B07;
        Fri,  7 Aug 2020 08:30:06 +0000 (UTC)
Date:   Fri, 7 Aug 2020 09:30:06 +0100
From:   Jonathan Wakely <jwakely@redhat.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [patch] printf.3: Fix description of %a hexfloat output
Message-ID: <20200807083006.GA2498449@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Clacks-Overhead: GNU Terry Pratchett
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The description of hexadecimal floating-point output is missing a
character describing the exponent. The guarantee of at least one digit
in the exponent is present in both C99 and POSIX.

diff --git a/man3/printf.3 b/man3/printf.3
index 18000bc70..d3510f7df 100644
--- a/man3/printf.3
+++ b/man3/printf.3
@@ -730,7 +730,7 @@ conversion, the
 .I double
 argument is converted to hexadecimal notation (using the letters abcdef)
 in the style
-.RB [\-] 0x h \&. hhhh p \(+-;
+.RB [\-] 0x h \&. hhhh p \(+-d;
 for
 .B A
 conversion the prefix
@@ -746,6 +746,8 @@ and otherwise is sufficiently large to distinguish values of type
 .IR double .
 The digit before the decimal point is unspecified for nonnormalized
 numbers, and nonzero but otherwise unspecified for normalized numbers.
+The exponent always contains at least one
+digit; if the value is zero, the exponent is 0.
 .TP
 .B c
 If no


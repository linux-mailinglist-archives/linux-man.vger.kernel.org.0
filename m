Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D78DE5F8599
	for <lists+linux-man@lfdr.de>; Sat,  8 Oct 2022 16:32:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229511AbiJHOcA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Oct 2022 10:32:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229470AbiJHOb7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Oct 2022 10:31:59 -0400
X-Greylist: delayed 1593 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 08 Oct 2022 07:31:58 PDT
Received: from mail.smrk.net (mail.smrk.net [IPv6:2001:19f0:6c01:2788:5400:4ff:fe27:adaa])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AD38422C8
        for <linux-man@vger.kernel.org>; Sat,  8 Oct 2022 07:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=smrk.net; s=20221002;
        t=1665237916;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=t6AYvbX6CCW+G9O+I2yAvkgY+0DwKVvoN0AfD4OlFDE=;
        b=PfCQTSk64GMYTSQyuauoLw1/lMc3m01hQf1YhZhcfS4UlvlTEdopx8RtZ1ccYONRMvix7q
        TLrme3yqfvWYC6jMzBEjoQy44mPvEfH9/9RPylrzsT5KKdH0pXsy+Ysmd6bbkFZglS1IrW
        nqBA0Is3mLYJaZ6YxAOnOlvO/bQUEOkQyBbEZA7i2+Fl8nJ2hMy6iRtMJPVfW+utWBkzK/
        tR1muJWIWpiaW+O5I/+1o+1BecpeUp2xVKqHfnaGAT8olU5v3X/rcQJBgDyV1lfmLCqVxS
        NgIbGILsdZgvtVz7KmFEAWY2a+pKqmRKKF1zGcKiT5lWUEq4naGWRAP9P2CDTQ==
Received: from localhost (internet-185-112-167-59.cznet.cz [185.112.167.59])
        by smrk.net (OpenSMTPD) with ESMTPSA id 05924578 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
        Sat, 8 Oct 2022 16:05:16 +0200 (CEST)
From:   =?UTF-8?q?=C5=A0t=C4=9Bp=C3=A1n=20N=C4=9Bmec?= <stepnem@smrk.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v1 0/2] Fix typos
Date:   Sat,  8 Oct 2022 16:05:12 +0200
Message-Id: <20221008140514.501942-1-stepnem@smrk.net>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <a021af5a-7694-b09c-523b-54e758fb2880@gmail.com>
References: <a021af5a-7694-b09c-523b-54e758fb2880@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_FMBLA_NEWDOM14,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, 08 Oct 2022 02:17:56 +0200
Alejandro Colomar wrote:

>> --- a/man2/pivot_root.2
>> +++ b/man2/pivot_root.2
>> @@ -60,7 +60,7 @@ must not be on the same mount as the current root.
>>   .IP \-
>>   \fIput_old\fP must be at or underneath \fInew_root\fP;
>>   that is, adding some nonnegative
>> -number of "\fI/..\fP" prefixes to the pathname pointed to by
>> +number of "\fI/..\fP" suffixes to the pathname pointed to by
>
> I'd like this change to be separate from the rest, as it's not an 
> obvious writing typo, but rather one that needs understanding the context.
>
> Would you mind splitting into a separate patch?

Here it is. (I wanted to test the waters of submitting accumulated
trivial fixes as a single patch, as I think it saves both some electrons
and the resources of everyone else involved.)

I took this opportunity to squash in another missing article to the
trivial typo patch (1/2).

Thanks,

  Štěpán

Štěpán Němec (2):
  memfd_create.2, mlock.2, poll.2, select.2, fopen.3, capabilities.7: tfix
  pivot_root.2: Fix a typo/thinko

 man2/memfd_create.2 | 2 +-
 man2/mlock.2        | 2 +-
 man2/pivot_root.2   | 2 +-
 man2/poll.2         | 2 +-
 man2/select.2       | 2 +-
 man3/fopen.3        | 2 +-
 man7/capabilities.7 | 4 ++--
 7 files changed, 8 insertions(+), 8 deletions(-)


base-commit: a4a073ae7737fb8f20c390a60b8555a7cfdace98
-- 
2.38.0

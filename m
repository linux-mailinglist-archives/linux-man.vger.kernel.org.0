Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBBEF6A2674
	for <lists+linux-man@lfdr.de>; Sat, 25 Feb 2023 02:21:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229803AbjBYBVY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Feb 2023 20:21:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229738AbjBYBTk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Feb 2023 20:19:40 -0500
X-Greylist: delayed 411 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 24 Feb 2023 17:18:18 PST
Received: from zimbra.cs.ucla.edu (zimbra.cs.ucla.edu [131.179.128.68])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53473158BE
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 17:18:18 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 6C36716007D;
        Fri, 24 Feb 2023 17:11:27 -0800 (PST)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id NZZFA6Qd7TuN; Fri, 24 Feb 2023 17:11:26 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 8265D160082;
        Fri, 24 Feb 2023 17:11:26 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.9.2 zimbra.cs.ucla.edu 8265D160082
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
        s=78364E5A-2AF3-11ED-87FA-8298ECA2D365; t=1677287486;
        bh=2rXWNjClauT5BEEmgR9hnEi68PS2byOedkxHu5qSbKI=;
        h=Content-Type:Message-ID:Date:MIME-Version:To:From:Subject;
        b=QaO7EDc1lmjQb4Xzj004CRl2FgutY/zzmKAdeB2GSutoeesPi2VZ4W+abu4xbVhah
         2gLW9IFFGXcoGDN+JYPWfFK918ZScBvsKiKQAKFQ4ev0h9kC0l0YjGLgTXtGh/fXse
         0OPiL1PZ9LBbGbgD4V54S92qa4QV8BYYySovtjT8=
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id f0xx64qj8mLz; Fri, 24 Feb 2023 17:11:26 -0800 (PST)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id 4E77416007D;
        Fri, 24 Feb 2023 17:11:26 -0800 (PST)
Content-Type: multipart/mixed; boundary="------------j8D1bCCE54MnVpVLvOHn2ZQX"
Message-ID: <e4de4979-59b1-46b3-66b9-1d54a39bf8fa@cs.ucla.edu>
Date:   Fri, 24 Feb 2023 17:11:25 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To:     Almaz Mingaleev <mingaleev@google.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     enh <enh@google.com>, mtk.manpages@gmail.com,
        linux-man@vger.kernel.org
References: <CAJ0cOr-v1GDCqsU86w-rZVvejtppOAW56FxApFPnfPwRmAd47w@mail.gmail.com>
 <CAJ0cOr-x+hg5cH_wHH+uJ4co69qYZN425d-nFdoqFtuM79Kxzg@mail.gmail.com>
 <CAJgzZooiJVgKDH9KkW_FKZJThDVLJjqGLQ3RB1NnHVQVbA-QjQ@mail.gmail.com>
 <2d8c77b3-ba32-1494-037b-ad609e1c263a@gmail.com>
 <CAJ0cOr_+tgOp4VRvHkPa6o10sTBpM8+T6-DJK2a1JkUBvrHFmA@mail.gmail.com>
 <CAJ0cOr99WV6fbdPj3t7QHG4QH0oHAPZb-8sJWYJ0SPMBBYc_Og@mail.gmail.com>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
Subject: Re: %z and %Z in strftime man page require clarification
In-Reply-To: <CAJ0cOr99WV6fbdPj3t7QHG4QH0oHAPZb-8sJWYJ0SPMBBYc_Og@mail.gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.
--------------j8D1bCCE54MnVpVLvOHn2ZQX
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

That patch looks complex and rather than go into its nooks and crannies, 
how about something much simpler, like the attached? This would be 
better for the typical reader of the strftime man page.

Although tm_zone and tm_gmtoff are not 100% portable to oddball 
platforms like MS-Windows, they'll be in the next POSIX and if that 
portability issue is to be documented at all any longwinded discussion 
should go in tm.3type not here.
--------------j8D1bCCE54MnVpVLvOHn2ZQX
Content-Type: text/x-patch; charset=UTF-8;
 name="0001-strftime.3-document-how-z-and-Z-are-calculated.patch"
Content-Disposition: attachment;
 filename*0="0001-strftime.3-document-how-z-and-Z-are-calculated.patch"
Content-Transfer-Encoding: base64

RnJvbSA0YjJmZmU4NGQ1YWJjNWIxMTMyMzY1N2ZkZmI4MTJjNzI2OWNlMmQzIE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBQYXVsIEVnZ2VydCA8ZWdnZXJ0QGNzLnVjbGEuZWR1
PgpEYXRlOiBGcmksIDI0IEZlYiAyMDIzIDE3OjAyOjM3IC0wODAwClN1YmplY3Q6IFtQQVRD
SF0gc3RyZnRpbWUuMzogZG9jdW1lbnQgaG93ICV6IGFuZCAlWiBhcmUgY2FsY3VsYXRlZAoK
LS0tCiBtYW4zL3N0cmZ0aW1lLjMgfCA0ICsrKysKIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2Vy
dGlvbnMoKykKCmRpZmYgLS1naXQgYS9tYW4zL3N0cmZ0aW1lLjMgYi9tYW4zL3N0cmZ0aW1l
LjMKaW5kZXggNTdiMmEzOGFhLi45MDI0OGQwYjQgMTAwNjQ0Ci0tLSBhL21hbjMvc3RyZnRp
bWUuMworKysgYi9tYW4zL3N0cmZ0aW1lLjMKQEAgLTQxNyw2ICs0MTcsOCBAQCBUaGUKIG9y
CiAuSSBcLWhobW0KIG51bWVyaWMgdGltZXpvbmUgKHRoYXQgaXMsIHRoZSBob3VyIGFuZCBt
aW51dGUgb2Zmc2V0IGZyb20gVVRDKS4gKFNVKQorKENhbGN1bGF0ZWQgZnJvbQorLklSIHRt
X2dtdG9mZiAuKQogLlRQCiAuQiAlWgogVGhlIHRpbWV6b25lIG5hbWUgb3IgYWJicmV2aWF0
aW9uLgpAQCAtNDI3LDYgKzQyOSw4IEBAIFRoZSB0aW1lem9uZSBuYW1lIG9yIGFiYnJldmlh
dGlvbi4KIFRoZSBkYXRlIGFuZCB0aW1lIGluCiAuQlIgZGF0ZSAoMSkKIGZvcm1hdC4gKFRa
KQorKENhbGN1bGF0ZWQgZnJvbQorLklSIHRtX3pvbmUgLikKIChOb3Qgc3VwcG9ydGVkIGlu
IGdsaWJjMi4pCiAuVFAKIC5CICUlCi0tIAoyLjM3LjIKCg==

--------------j8D1bCCE54MnVpVLvOHn2ZQX--

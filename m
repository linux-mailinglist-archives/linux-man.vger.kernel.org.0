Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EDF0963936C
	for <lists+linux-man@lfdr.de>; Sat, 26 Nov 2022 03:31:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229793AbiKZCbF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Nov 2022 21:31:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229789AbiKZCbE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Nov 2022 21:31:04 -0500
Received: from zimbra.cs.ucla.edu (zimbra.cs.ucla.edu [131.179.128.68])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F22E65801E
        for <linux-man@vger.kernel.org>; Fri, 25 Nov 2022 18:31:03 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id C1A8E160078;
        Fri, 25 Nov 2022 18:31:03 -0800 (PST)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id 7TGG45ouhGtA; Fri, 25 Nov 2022 18:31:03 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 0184F160080;
        Fri, 25 Nov 2022 18:31:03 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.9.2 zimbra.cs.ucla.edu 0184F160080
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
        s=78364E5A-2AF3-11ED-87FA-8298ECA2D365; t=1669429863;
        bh=iOPAhCpz5zjVfJC/vXrDPXn4XTw9B8+cGrZLuHwc3H0=;
        h=Content-Type:Message-ID:Date:MIME-Version:Subject:From:To;
        b=MN9v7yny3FLDH4MoeHV5IDnlRQcnBPA1FuJTvyCrHT1H+sMp4XczTNI2aGF02TdVs
         FcmeUywy0e4O4/p8dj9zPZLmTSmzyM5Zv8uTMwAe6FUUqUg+CweV+4WyJrew4L5RhU
         KRM+fTEpeLcGUz34tlphGzwOl3ETxnWVdnebPhmE=
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id UwXp_uDGGoG9; Fri, 25 Nov 2022 18:31:02 -0800 (PST)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id B778616007F;
        Fri, 25 Nov 2022 18:31:02 -0800 (PST)
Content-Type: multipart/mixed; boundary="------------MfdS4F90zpFdKSnRxjg6prjW"
Message-ID: <f8fa5d28-034c-4080-98d7-a142f467b45e@cs.ucla.edu>
Date:   Fri, 25 Nov 2022 18:31:02 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 3/4] zic.8: Use correct escape sequences instead of
 special characters
Content-Language: en-US
From:   Paul Eggert <eggert@cs.ucla.edu>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Geoff Clare <gwc@opengroup.org>, groff@gnu.org,
        Time zone mailing list <tz@iana.org>
References: <20221123134827.10420-1-alx@kernel.org>
 <20221123134827.10420-3-alx@kernel.org>
 <2dc9b4ee-83c4-9a23-82d5-fd314efd648d@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <2dc9b4ee-83c4-9a23-82d5-fd314efd648d@cs.ucla.edu>
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.
--------------MfdS4F90zpFdKSnRxjg6prjW
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2022-11-23 10:43, Paul Eggert wrote:
> I installed that
Further testing showed that the installed patch doesn't work with 
traditional troff, which doesn't support groff escape sequences like 
\(aq. To fix this I installed the equivalent of the attached further 
patch to TZDB.
--------------MfdS4F90zpFdKSnRxjg6prjW
Content-Type: text/x-patch; charset=UTF-8; name="specials.diff"
Content-Disposition: attachment; filename="specials.diff"
Content-Transfer-Encoding: base64

ZGlmZiAtLWdpdCBhL3ppYy44IGIvemljLjgKaW5kZXggZjM0NWY5NDQuLmNjZDAxMmIzIDEw
MDY0NAotLS0gYS96aWMuOAorKysgYi96aWMuOApAQCAtMzQ5LDcgKzM0OSw4IEBAIG5vcgog
LnEgKyAuCiBUbyBhbGxvdyBmb3IgZnV0dXJlIGV4dGVuc2lvbnMsCiBhbiB1bnF1b3RlZCBu
YW1lIHNob3VsZCBub3QgY29udGFpbiBjaGFyYWN0ZXJzIGZyb20gdGhlIHNldAotLnEgISQl
JlwoYXEoKSosLzo7PD0+P0BbXGVdXChoYVwoZ2F7fH1cKHRpIC4KKy5pZSBcbiguZyAucSBc
ZihDUiEkJSZcKGFxKCkqLC86Ozw9Pj9AW1xlXVwoaGFcKGdhe3x9XCh0aVxmUCAuCisuZWwg
LnEgISQlJicoKSosLzo7PD0+P0BbXGVdXmB7fH1+IC4KIC5UUAogLkIgRlJPTQogR2l2ZXMg
dGhlIGZpcnN0IHllYXIgaW4gd2hpY2ggdGhlIHJ1bGUgYXBwbGllcy4K

--------------MfdS4F90zpFdKSnRxjg6prjW--

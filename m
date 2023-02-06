Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E526768B4FC
	for <lists+linux-man@lfdr.de>; Mon,  6 Feb 2023 05:46:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229632AbjBFEq6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Feb 2023 23:46:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229642AbjBFEqu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Feb 2023 23:46:50 -0500
Received: from omta002.cacentral1.a.cloudfilter.net (omta002.cacentral1.a.cloudfilter.net [3.97.99.33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B21C61631B
        for <linux-man@vger.kernel.org>; Sun,  5 Feb 2023 20:46:44 -0800 (PST)
Received: from shw-obgw-4002a.ext.cloudfilter.net ([10.228.9.250])
        by cmsmtp with ESMTP
        id Omenpt1fGl2xSOtOtpRlJW; Mon, 06 Feb 2023 04:46:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675658803; bh=2A1xT72MMIlM/sIxakpV7AzXrkwUzigbcniNvw0eN4Y=;
        h=Date:Reply-To:Subject:To:References:From:Cc:In-Reply-To;
        b=a0YDjMUy1mtn5bYZlMlpU/46K7DopVZnVP79h3/BFm1XdDAIM6kb3+NRNAY55pgjb
         RX20D8VkUL8aUaQ9l02+sMV4A0GdSLtRCQKx+pgkhNN4quwySr3CNmsjNFrq/1b7Nu
         d478xDGU08zxrgv44GUAdYorauMntZlBbiMwvKk4YPUHdh1rdPSffxPcGtYm+gobV3
         kRkVqyszZWv5lH5QElo/4mfiXSvqzDQ7rgM4BqA1sNDCx6eWbDjIU6eFUEMELytPAi
         ymFg6F5cjT/DMlM4VBw8/ZnWCYfykZQLcpdZDnguoOF909yyiSEOnYRULO7dM+Wd/1
         LlICF6+pJUt9A==
Received: from [10.0.0.5] ([184.64.124.72])
        by cmsmtp with ESMTP
        id OtOtpxsWpyAOeOtOtpDFFG; Mon, 06 Feb 2023 04:46:43 +0000
X-Authority-Analysis: v=2.4 cv=e5oV9Il/ c=1 sm=1 tr=0 ts=63e08633
 a=oHm12aVswOWz6TMtn9zYKg==:117 a=oHm12aVswOWz6TMtn9zYKg==:17
 a=IkcTkHD0fZMA:10 a=yPf7pi8k6090NVXkwu8A:9 a=QEXdDO2ut3YA:10
Message-ID: <85435ead-0573-340f-56a2-4dda1990b20c@Shaw.ca>
Date:   Sun, 5 Feb 2023 21:46:42 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Reply-To: Linux Man-Pages <linux-man@vger.kernel.org>
Subject: Re: [PATCH 01/11] man2/shmget.2: fix limit units suffix from SI to
 IEC
Content-Language: en-CA
To:     Linux Man-Pages <linux-man@vger.kernel.org>
References: <20230205225924.63300-1-Brian.Inglis@Shaw.ca>
 <20230205225924.63300-2-Brian.Inglis@Shaw.ca>
 <aa33a846-5a32-2464-2dfa-d8785d604f71@gmail.com>
 <0048ff92-dc4a-f58e-ba5b-6aeb80031abb@gmail.com>
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
Organization: Inglis
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <0048ff92-dc4a-f58e-ba5b-6aeb80031abb@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfBxZQSW8Fdy7l0h5ZViHP/XtRKBjT9REkHlli8WUtmUOdtKNU+1f9UwE/bbsOKscW3bFPJdMP4/7HP0VeATELCzCeKhm6bwGG4146O3zhaa3YIGhxEUq
 hMeEN9PjVsksMAS2ooJ1u6fnrVK3U0waRVWV3MfRIzd/SGDPN71cAPDmEoHxHmoZsw47FNpRZlTdRB/2jlpebvqRX4sgFdmoxE00whZcTRL12Nx4SsUIsCyY
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-02-05 17:02, Alejandro Colomar wrote:
> On 2/6/23 00:31, Alejandro Colomar wrote:
> Could you please send the patches inline?

>> If you fear that your mailer might break them, send them _also_ attached, but 
>> please send them inline in the email.

> Also, please send git patches, with a commit message, which can be produced with 
> git-format-patch(1).

I did my usual:
$ sed -i -e '
s!^...$!...!
	...
'
$ ...
$ git commit -m 'man2/...' man2/...
# 11 commits: 9 individual 8 files, 1 interval notation 6 files, 1 rest 33 files
$ git format-patch ... -11
$ git send-email ... 00??-...

Saw no need for longer multi-line commit messages as each was pretty specific.
Please say if you prefer a different patch format or convention.

Do you expect some other email client than git to be used to send email, or do 
you just want all the patch diffs in a single email body or what?

Some patches may be delayed or disjoint as my ISP email is aggressively filtered 
by an outsourced "provider" that does not like patch series in or out and fails 
with no status code: "<from...> server temporarily unavailable. AUP#MXRT"!

-- 
Take care. Thanks, Brian Inglis			Calgary, Alberta, Canada

La perfection est atteinte			Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter	not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer	but when there is no more to cut
			-- Antoine de Saint-Exupéry

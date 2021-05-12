Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 18BA637EFB7
	for <lists+linux-man@lfdr.de>; Thu, 13 May 2021 01:22:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235013AbhELXWj convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Wed, 12 May 2021 19:22:39 -0400
Received: from zimbra.cs.ucla.edu ([131.179.128.68]:58388 "EHLO
        zimbra.cs.ucla.edu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237188AbhELWkg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 May 2021 18:40:36 -0400
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 70AA11600EB;
        Wed, 12 May 2021 15:39:25 -0700 (PDT)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id O8HXpF1ogtcs; Wed, 12 May 2021 15:39:24 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id C42D6160102;
        Wed, 12 May 2021 15:39:24 -0700 (PDT)
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id HcM1tCIVmqc6; Wed, 12 May 2021 15:39:24 -0700 (PDT)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id 9B79D1600EB;
        Wed, 12 May 2021 15:39:24 -0700 (PDT)
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <20210512204311.19399-1-alx.manpages@gmail.com>
 <ca33b912-2273-b1d0-57b8-b94a19822bfd@cs.ucla.edu>
 <b09b67a5-2006-62b7-13fc-1930b34e848b@gmail.com>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
Subject: Re: [PATCH] MAX.3, MIN.3: New page (and link page) to document MAX()
 and MIN()
Message-ID: <688adf87-e108-b4dd-66dd-ae9c4d7afdf8@cs.ucla.edu>
Date:   Wed, 12 May 2021 15:39:24 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <b09b67a5-2006-62b7-13fc-1930b34e848b@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/12/21 3:32 PM, Alejandro Colomar (man-pages) wrote:
> In which case they might not be evaluated at all?  I'm curious.
> Maybe if one of the arguments is literal NAN and the implementation
> raises an exception for it?

Or, one argument of MIN might be negative and the other might be 
unsigned short. In that case, the unsigned short argument need not be 
evaluated at all. Admittedly not something we'd be likely to optimize 
for, but the documentation shouldn't preclude such optimization.

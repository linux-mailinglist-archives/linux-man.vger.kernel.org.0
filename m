Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 63FCB4293AF
	for <lists+linux-man@lfdr.de>; Mon, 11 Oct 2021 17:43:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239249AbhJKPpu convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Mon, 11 Oct 2021 11:45:50 -0400
Received: from zimbra.cs.ucla.edu ([131.179.128.68]:48604 "EHLO
        zimbra.cs.ucla.edu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240727AbhJKPpt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 11 Oct 2021 11:45:49 -0400
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id A4B361600C2;
        Mon, 11 Oct 2021 08:37:26 -0700 (PDT)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id k3OriGxyBnXN; Mon, 11 Oct 2021 08:37:26 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 03CE31600C3;
        Mon, 11 Oct 2021 08:37:26 -0700 (PDT)
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id k6kgaR7sFSQT; Mon, 11 Oct 2021 08:37:25 -0700 (PDT)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id CF0FB1600C2;
        Mon, 11 Oct 2021 08:37:25 -0700 (PDT)
Subject: Re: [PATCH] ctime.3: mktime() may modify tm_hour due to tm_isdst
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        mtk.manpages@gmail.com, linux-man@vger.kernel.org
Cc:     libc-alpha@sourceware.org
References: <20211010105245.53896-1-alx.manpages@gmail.com>
 <a8e09a03-3eb2-d6c0-c662-e3db800fe2fc@gmail.com>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
Message-ID: <6ccf0867-33fe-53f0-0bb9-bf25d09aabb6@cs.ucla.edu>
Date:   Mon, 11 Oct 2021 08:37:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <a8e09a03-3eb2-d6c0-c662-e3db800fe2fc@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/11/21 3:27 AM, Alejandro Colomar (man-pages) wrote:
> timegm(3) says that you should "avoid their use" because timegm(3) is a 
> Linux and BSD extension, but its use can NOT be avoided (well, it can, 
> but if not done very carefully, you are likely to introduce bugs due to 
> setenv(3) not being thread-safe), so I'd remove that sentence from 
> timegm(3).  I think it should be in POSIX.

No, NetBSD's mktime_z should be in POSIX, as it nicely generalizes both 
mktime and timegm.

mktime_z should also be in glibc, but that's another story....

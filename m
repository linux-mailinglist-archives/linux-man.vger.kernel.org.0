Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E0FBE4293AE
	for <lists+linux-man@lfdr.de>; Mon, 11 Oct 2021 17:43:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242386AbhJKPpu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 11 Oct 2021 11:45:50 -0400
Received: from zimbra.cs.ucla.edu ([131.179.128.68]:48600 "EHLO
        zimbra.cs.ucla.edu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239249AbhJKPpt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 11 Oct 2021 11:45:49 -0400
X-Greylist: delayed 419 seconds by postgrey-1.27 at vger.kernel.org; Mon, 11 Oct 2021 11:45:49 EDT
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id C6CE91600C5;
        Mon, 11 Oct 2021 08:36:50 -0700 (PDT)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id gfKmCxSh698a; Mon, 11 Oct 2021 08:36:50 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 1F1511600C2;
        Mon, 11 Oct 2021 08:36:50 -0700 (PDT)
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id hSheFlpbQJ0R; Mon, 11 Oct 2021 08:36:50 -0700 (PDT)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id E602E1600C5;
        Mon, 11 Oct 2021 08:36:49 -0700 (PDT)
Subject: Re: [PATCH v2 1/2] ctime.3: mktime() may modify tm_hour due to
 tm_isdst
To:     Alejandro Colomar <alx.manpages@gmail.com>, mtk.manpages@gmail.com,
        linux-man@vger.kernel.org
Cc:     libc-alpha@sourceware.org
References: <a8e09a03-3eb2-d6c0-c662-e3db800fe2fc@gmail.com>
 <20211011111237.9414-1-alx.manpages@gmail.com>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
Message-ID: <1ca68ed3-93e7-c94a-1859-ab876412e4c7@cs.ucla.edu>
Date:   Mon, 11 Oct 2021 08:36:49 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211011111237.9414-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/11/21 4:12 AM, Alejandro Colomar wrote:
> +If the initial value of
> +.I tm_isdst
> +is inconsistent with the one set by
> +.BR mktime (),
> +.I tm_hour
> +(and possibly other fields)
> +will be modified to normalize the time to the correct DST.

I don't see why this change is necessary. mktime normalizes all its 
input fields: there's nothing special about tm_isdst and tm_hour.

If normalization isn't explained clearly enough elsewhere in the man 
page, that explanation should be fixed; there shouldn't be special-case 
wording that implies that this is the only special case.

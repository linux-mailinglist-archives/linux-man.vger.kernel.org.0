Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 64CDE636924
	for <lists+linux-man@lfdr.de>; Wed, 23 Nov 2022 19:42:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238995AbiKWSmS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Nov 2022 13:42:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239768AbiKWSmM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Nov 2022 13:42:12 -0500
Received: from zimbra.cs.ucla.edu (zimbra.cs.ucla.edu [131.179.128.68])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17C3B58BC3
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 10:42:12 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id D730316006A;
        Wed, 23 Nov 2022 10:42:11 -0800 (PST)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id FLNHxRbkxwaH; Wed, 23 Nov 2022 10:42:11 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 1F9D116006D;
        Wed, 23 Nov 2022 10:42:11 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.9.2 zimbra.cs.ucla.edu 1F9D116006D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
        s=78364E5A-2AF3-11ED-87FA-8298ECA2D365; t=1669228931;
        bh=m7WbGtBO7HCilLSFR5ekxpDzbUEKSDUtRc+rfYOzfj4=;
        h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type:
         Content-Transfer-Encoding;
        b=Evk+ujLAAk1a5h3Ydc6BE1uH474FVUQN4Fun61PwCruqfqkToHHvJDpENyH7e/127
         dxS80nWYo2iv9NS+h+snoFehXOYPqvMmo+xRUX6XurMgzNodHr2in1oiGGdqkQuSI/
         0pBklFPVNy7hMmQba7Xy0dXhPpfBr9FGFzzpItvc=
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id geUjEzQkW9jO; Wed, 23 Nov 2022 10:42:11 -0800 (PST)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id E579B16006A;
        Wed, 23 Nov 2022 10:42:10 -0800 (PST)
Message-ID: <0b1c6659-6a1f-a1aa-daf2-91e86ab17efd@cs.ucla.edu>
Date:   Wed, 23 Nov 2022 10:42:10 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        Time zone mailing list <tz@iana.org>
References: <20221123134827.10420-1-alx@kernel.org>
 <20221123134827.10420-2-alx@kernel.org>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
Subject: Re: [PATCH v2 2/4] zic.8: s/time zone/timezone/ for consistency
In-Reply-To: <20221123134827.10420-2-alx@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2022-11-23 05:48, Alejandro Colomar wrote:
> This adds consistency across other manual pages, and with POSIX.1.

The tzdb project documentation uses the phrase "time zone" for the 
ordinary English meaning that you'll see in time zone maps or in phrases 
like "time zone abbreviation", whereas it uses the single word 
"timezone" to mean the POSIX idea of a set of rules that map UTC to 
local time. So, for example, this proposed change:

> -A time zone abbreviation uses a
> +A timezone abbreviation uses a

would not be right, because an time zone abbreviation like "PDT" doesn't 
denote a set of rules like a TZ string would.

I suggest modifying other Linux manual pages to be consistent with this 
usage, rather than trying to use the single word "timezone" for both 
usages. Quite possibly most other Linux manual pages typically use 
"timezone" because they're typically talking about the POSIX meaning, 
which would mean they're already OK.

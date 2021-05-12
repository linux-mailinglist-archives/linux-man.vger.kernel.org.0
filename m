Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D56C37EE92
	for <lists+linux-man@lfdr.de>; Thu, 13 May 2021 00:59:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240356AbhELVxA convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Wed, 12 May 2021 17:53:00 -0400
Received: from zimbra.cs.ucla.edu ([131.179.128.68]:43906 "EHLO
        zimbra.cs.ucla.edu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240123AbhELV31 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 May 2021 17:29:27 -0400
X-Greylist: delayed 613 seconds by postgrey-1.27 at vger.kernel.org; Wed, 12 May 2021 17:29:27 EDT
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id BA72716008C;
        Wed, 12 May 2021 14:17:55 -0700 (PDT)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id BVLc-q9bsRrB; Wed, 12 May 2021 14:17:54 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id C1D1A160102;
        Wed, 12 May 2021 14:17:54 -0700 (PDT)
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id eHdQLb2BNHSO; Wed, 12 May 2021 14:17:54 -0700 (PDT)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id 9503716008C;
        Wed, 12 May 2021 14:17:54 -0700 (PDT)
To:     Alejandro Colomar <alx.manpages@gmail.com>, mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <20210512204311.19399-1-alx.manpages@gmail.com>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
Subject: Re: [PATCH] MAX.3, MIN.3: New page (and link page) to document MAX()
 and MIN()
Message-ID: <ca33b912-2273-b1d0-57b8-b94a19822bfd@cs.ucla.edu>
Date:   Wed, 12 May 2021 14:17:54 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210512204311.19399-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/12/21 1:43 PM, Alejandro Colomar via Libc-alpha wrote:

> +If any of the arguments is of a floating-point type,

"any" -> "either"

> +these macros shouldn't be used

That's too strong. It's often OK to use MAX and MIN on floating point 
arguments.

> +The arguments may be evaluated more than once,
> +and their types might be promoted to a common type
> +if both arguments aren't of the same type.

This is muddy. It should state clearly that even if A and B are both 
integers, MAX (a, b) might not return their maximum. For example, on a 
typical C platform today, MAX (-1, 2147483648) returns 4294967295 and 
MIN (-1, 2147483648) returns 2147483648.

Also, the man page shouldn't require the arguments to be evaluated at 
least once. It's possible to implement MAX so that it sometimes doesn't 
evaluate one argument, and the documentation shouldn't preclude such an 
implementation.

The man page should more specifically mention that although MIN and MAX 
are defined <sys/param.h> on GNU platforms, other platforms define them 
elsewhere or not at all.

> +These macros return the value of one of their arguments,

Unfortunately they don't necessarily do that, as shown in the MAX 
example above.

I suggest looking at the remarks about MAX and MIN that are made here, 
and incorporating the useful parts of these remarks into the man page:

https://git.savannah.gnu.org/cgit/gnulib.git/tree/lib/minmax.h






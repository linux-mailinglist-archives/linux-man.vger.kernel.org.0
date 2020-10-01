Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D92F6280546
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 19:32:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732360AbgJARcQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 13:32:16 -0400
Received: from zimbra.cs.ucla.edu ([131.179.128.68]:49028 "EHLO
        zimbra.cs.ucla.edu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732213AbgJARcQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 13:32:16 -0400
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 77A6E160114;
        Thu,  1 Oct 2020 10:32:15 -0700 (PDT)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id 3qcf_0LgGAsa; Thu,  1 Oct 2020 10:32:14 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id AB97C160115;
        Thu,  1 Oct 2020 10:32:14 -0700 (PDT)
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id s_WRgq1VfJhf; Thu,  1 Oct 2020 10:32:14 -0700 (PDT)
Received: from [192.168.1.9] (cpe-23-243-218-95.socal.res.rr.com [23.243.218.95])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id 76683160114;
        Thu,  1 Oct 2020 10:32:14 -0700 (PDT)
Subject: Re: [PATCH v2 1/2] system_data_types.7: Add 'void *'
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>, mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        gcc@gcc.gnu.org
References: <41affebd-3354-9420-0048-bffd14535e95@gmail.com>
 <20201001154946.104626-2-colomar.6.4.3@gmail.com>
From:   Paul Eggert <eggert@cs.ucla.edu>
Autocrypt: addr=eggert@cs.ucla.edu; prefer-encrypt=mutual; keydata=
 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
Organization: UCLA Computer Science Department
Message-ID: <538b683f-01d2-6148-4f1d-1b293eb5cd6b@cs.ucla.edu>
Date:   Thu, 1 Oct 2020 10:32:14 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201001154946.104626-2-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

If you're going to document this at all, I suggest documenting 'void' as well as 
'void *', and putting both sets of documentation into the same man page.

For 'void *' you should also mention that one cannot use arithmetic on void * 
pointers, so they're special in that way too. Also, you should warn that because 
one can convert from any pointer type to void * and then to any other pointer 
type, it's a deliberate hole in C's type-checking. It might not also hurt to 
mention 'void const *', 'void volatile *', 'void const volatile *', etc.

For 'void' you can mention the usual things, such as functions returning void, 
and functions declared with (void) parameters, why one would want to cast to 
(void), and so forth.

You're starting to document the C language here, and if you're going to do that 
you might as well do it right.

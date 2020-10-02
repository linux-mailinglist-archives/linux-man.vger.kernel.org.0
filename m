Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 514E2281CB7
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 22:14:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725648AbgJBUOD convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Fri, 2 Oct 2020 16:14:03 -0400
Received: from zimbra.cs.ucla.edu ([131.179.128.68]:33610 "EHLO
        zimbra.cs.ucla.edu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725379AbgJBUOD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 16:14:03 -0400
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id EBB381600D1;
        Fri,  2 Oct 2020 13:14:02 -0700 (PDT)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id WxOiNx4hrrsE; Fri,  2 Oct 2020 13:14:02 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 37F851600DA;
        Fri,  2 Oct 2020 13:14:02 -0700 (PDT)
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id tseiFp9g3r0C; Fri,  2 Oct 2020 13:14:02 -0700 (PDT)
Received: from [192.168.1.9] (cpe-23-243-218-95.socal.res.rr.com [23.243.218.95])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id EFEFC1600D1;
        Fri,  2 Oct 2020 13:14:01 -0700 (PDT)
Subject: Re: [PATCH v4 1/2] system_data_types.7: Add 'void *'
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        gcc-patches@gcc.gnu.org, libc-alpha@sourceware.org,
        linux-kernel@vger.kernel.org, jwakely.gcc@gmail.com,
        David.Laight@ACULAB.COM
References: <20201002121645.23646-1-colomar.6.4.3@gmail.com>
 <20201002151419.32053-2-colomar.6.4.3@gmail.com>
 <3941e130-df05-778b-dc76-90cd58400192@cs.ucla.edu>
 <d794a058-0506-7c3c-6f3e-518a788933af@gmail.com>
From:   Paul Eggert <eggert@cs.ucla.edu>
Autocrypt: addr=eggert@cs.ucla.edu; prefer-encrypt=mutual; keydata=
 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
Organization: UCLA Computer Science Department
Message-ID: <ff1700df-d383-44e7-24b4-da10000f83fc@cs.ucla.edu>
Date:   Fri, 2 Oct 2020 13:14:01 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <d794a058-0506-7c3c-6f3e-518a788933af@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/2/20 11:38 AM, Alejandro Colomar wrote:

> .I void *
> 
> renders with a space in between.

That's odd, as "man(7)" says "All of the arguments will be printed next to each 
other without intervening spaces". I'd play it safe and quote the arg anyway.

>  > %p works with any object pointer type (or in POSIX, any pointer type),
>  > not just  void *.
> In theory, no (if otherwise, I'd like to know why):

Oh, you're right. I had missed that. In GNU/Linux hosts, though, any pointer 
(including function pointers) can be given to %p.

The only platforms where %p wouldn't work on all pointers would be platforms 
like IBM i, which has both 64-bit (process local) pointers and 128-bit (tagged 
space) pointers and where you can declare and use pointers of different widths 
in the same program.

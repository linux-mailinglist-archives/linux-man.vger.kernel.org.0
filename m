Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE98E6BDB35
	for <lists+linux-man@lfdr.de>; Thu, 16 Mar 2023 23:00:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229890AbjCPWAa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 16 Mar 2023 18:00:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229849AbjCPWA3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 16 Mar 2023 18:00:29 -0400
Received: from zimbra.cs.ucla.edu (zimbra.cs.ucla.edu [131.179.128.68])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C140069CEB
        for <linux-man@vger.kernel.org>; Thu, 16 Mar 2023 15:00:28 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 7652E160081;
        Thu, 16 Mar 2023 15:00:28 -0700 (PDT)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id Y9XRZ8Pz7BHA; Thu, 16 Mar 2023 15:00:27 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id B3416160092;
        Thu, 16 Mar 2023 15:00:27 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.9.2 zimbra.cs.ucla.edu B3416160092
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
        s=78364E5A-2AF3-11ED-87FA-8298ECA2D365; t=1679004027;
        bh=dhR5N5g30cwvGXLa1YkShO0OapM0+kmglmDAFRgFing=;
        h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type:
         Content-Transfer-Encoding;
        b=XK0iPRZ7RUoM5mp2hmzyHPq/dUbgr3KCM8FuRBkqOHpTRfHCafCMxbxycTVFg7t7F
         eELfbHj9R7To5uv8PYJfk7Du0XMYINxch3nPYHKBBYvmBFs5oECOgyqFOZKJY3MBWA
         mL9npFQqVn4N3K9rEXgG3TIMMPKIgzfTBapUyLrk=
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id t_RBzg2kZlkr; Thu, 16 Mar 2023 15:00:27 -0700 (PDT)
Received: from [131.179.64.200] (Penguin.CS.UCLA.EDU [131.179.64.200])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id 8ED0E160081;
        Thu, 16 Mar 2023 15:00:27 -0700 (PDT)
Message-ID: <429de040-82a7-7c0e-82df-42adca64a670@cs.ucla.edu>
Date:   Thu, 16 Mar 2023 15:00:27 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [patch] aligned_alloc: conform to C17
Content-Language: en-US
To:     DJ Delorie <dj@redhat.com>
References: <xnv8j02zji.fsf@greed.delorie.com>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
Cc:     libc-alpha@sourceware.org, linux-man@vger.kernel.org
In-Reply-To: <xnv8j02zji.fsf@greed.delorie.com>
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

On 3/16/23 13:48, DJ Delorie via Libc-alpha wrote:
> +  /* Similar to memalign, but ISO C17 requires an error for invalid
> +     alignments.  Valid alignments are non-negative powers of two.  */
> +  if (!powerof2 (alignment))

powerof2 (0) == 1, unfortunately. Does the C standard let aligned_alloc 
(alignment, size) succeed when ALIGNMENT is zero? I think not, as zero 
is 2**-Infinity, and -Infinity is not non-negative. So that line should 
be changed to something like 'if (!powerof2 (alignment) || alignment == 0)'.

There may be other occurrences of this issue in Glibc already; I haven't 
checked.

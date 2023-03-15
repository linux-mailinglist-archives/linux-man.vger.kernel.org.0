Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 449FF6BBF3B
	for <lists+linux-man@lfdr.de>; Wed, 15 Mar 2023 22:40:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232474AbjCOVj6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Mar 2023 17:39:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232400AbjCOVj5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Mar 2023 17:39:57 -0400
Received: from smtp-8fae.mail.infomaniak.ch (smtp-8fae.mail.infomaniak.ch [IPv6:2001:1600:4:17::8fae])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DA6D4EDB
        for <linux-man@vger.kernel.org>; Wed, 15 Mar 2023 14:39:55 -0700 (PDT)
Received: from smtp-2-0000.mail.infomaniak.ch (unknown [10.5.36.107])
        by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4PcP1h0gQxzMpnPZ;
        Wed, 15 Mar 2023 22:39:52 +0100 (CET)
Received: from unknown by smtp-2-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4PcP1g48cfzMt2f6;
        Wed, 15 Mar 2023 22:39:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=digikod.net;
        s=20191114; t=1678916391;
        bh=S0lcAzRGjVmoe+WM3s7JLd10IelKNO4zNj0FhbwMSJI=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=WnwO4mebE+FdC/EbwG6w7yjQ2xniYZAH+VUAFD6jLNkeqQW8x3jYreA40pOYHZJ2A
         0jZvUs6O24It2yLMetoKAEuMCB+OqnpidVdxsIOCDGJtf7riozmiq891FzXygowDJ7
         Im0TJTAY6bmSKO2ospfUC7CeOzgkFZGTgY8eplR4=
Message-ID: <1421ea14-dca4-2969-11b7-4a37720b9886@digikod.net>
Date:   Wed, 15 Mar 2023 22:39:50 +0100
MIME-Version: 1.0
User-Agent: 
Subject: Re: [PATCH v4 3/3] landlock.7: Give a pointer to how to implement a
 fallback mechanism
Content-Language: en-US
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20230310220851.22261-1-gnoack3000@gmail.com>
 <20230310220851.22261-3-gnoack3000@gmail.com>
From:   =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
In-Reply-To: <20230310220851.22261-3-gnoack3000@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Infomaniak-Routing: alpha
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


On 10/03/2023 23:08, Günther Noack wrote:
> Signed-off-by: Günther Noack <gnoack3000@gmail.com>
> ---
>   man7/landlock.7 | 16 ++++++++++++++--
>   1 file changed, 14 insertions(+), 2 deletions(-)
> 
> diff --git a/man7/landlock.7 b/man7/landlock.7
> index 9c305edef..c173cbb98 100644
> --- a/man7/landlock.7
> +++ b/man7/landlock.7
> @@ -393,12 +393,14 @@ accessible through these system call families:
>   Future Landlock evolutions will enable to restrict them.
>   .SH EXAMPLES
>   We first need to create the ruleset that will contain our rules.
> +.PP
>   For this example,
>   the ruleset will contain rules that only allow read actions,
>   but write actions will be denied.
>   The ruleset then needs to handle both of these kinds of actions.
> -See below for the description of filesystem actions.
> -.PP
> +See the
> +.B DESCRIPTION
> +section for the description of filesystem actions.
>   .in +4n
>   .EX
>   struct landlock_ruleset_attr attr = {0};
> @@ -429,6 +431,16 @@ if (ruleset_fd == \-1) {
>   .EE
>   .in
>   .PP
> +The ruleset we have constructed requires Landlock ABI version 3 or higher.
> +On kernels which do not provide that,
> +the call to
> +.BR landlock_create_ruleset (2)
> +will fail.

One of the goal of Landlock is to avoid developers and their code to 
(lazily) error out if one feature is not supported by the running 
kernel. If this happens, a lot of sandboxing will be disabled (and then 
useless) because users don't necessarily have the same kernel as 
developers'.

Such security feature is not the same as a "necessary" feature. Indeed, 
sandboxing is and should be optional for applications to run correctly, 
hence the recommended best-effort approach: 
https://docs.kernel.org/userspace-api/landlock.html#backward-and-forward-compatibility

I agree that the man page should not be too complex, but I think 
teaching the best (default) approach should be the goal.

For the example, we can ignore LANDLOCK_ACCESS_FS_REFER but use all 
other access rights, especially LANDLOCK_ACCESS_FS_TRUNCATE. However, 
this last one should be masked if not supported by the running kernel. 
See 
https://docs.kernel.org/userspace-api/landlock.html#defining-and-enforcing-a-security-policy

An alternative would be to ignore access rights for ABI > 1 to make it 
simple, but this would not help developers dealing with real use cases.

This comment applies to all these 3 patches.


> +You can build a more graceful fallback mechanism
> +by using the version compatibility table from the
> +.B VERSIONS
> +section.
> +.PP
>   We can now add a new rule to this ruleset thanks to the returned file
>   descriptor referring to this ruleset.
>   The rule will only allow reading the file hierarchy

Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A09606B0E69
	for <lists+linux-man@lfdr.de>; Wed,  8 Mar 2023 17:18:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230248AbjCHQSN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Mar 2023 11:18:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231364AbjCHQRw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Mar 2023 11:17:52 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F271BE5F2
        for <linux-man@vger.kernel.org>; Wed,  8 Mar 2023 08:17:51 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 0F261B81D91
        for <linux-man@vger.kernel.org>; Wed,  8 Mar 2023 16:17:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84162C433EF;
        Wed,  8 Mar 2023 16:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1678292268;
        bh=2fnmxZquOhuWq3ohgKX6xMy1fJkUEkmaPEoVtNfZmcE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Zlj9mDGUta33JAIDo/ajmBAWxQcuClcq3ePpU1pLu4HcLhqU1FY4Ivtf9hH7ZSiw2
         X8alWE/+f5QwSsBux8WKolfygHgAp7LRJGb+6lSJjew11DijI8nNCIRI9b2PO8IGoF
         UNH+QzSVhzgbtdLXglglxn9lhyT38s76+D7UOKJnGfexw9WIcHbfJh8567TRcfuYwx
         7d8cH6MW7JG10CG8NNntzdr3ohxgKp1k1UAdK19UE51yAmNFHAqASL5LZtiBLNkhMn
         T+xvXRnhIF4/47z7n4/3VFNs/+vKhVz66fADCSUQSSIvUebLeL5U3xtndob/mK8td5
         nEnvzJutHlyNQ==
Date:   Wed, 8 Mar 2023 17:17:44 +0100
From:   Christian Brauner <brauner@kernel.org>
To:     Rodrigo Campos <rodrigo@sdfg.com.ar>
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] user_namespaces.7: Add note about PR_SET_DUMPABLE on
 nested userns
Message-ID: <20230308161744.iqr3kllrvgkgo5tn@wittgenstein>
References: <20230308152219.595611-1-rodrigo@sdfg.com.ar>
 <20230308152219.595611-3-rodrigo@sdfg.com.ar>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230308152219.595611-3-rodrigo@sdfg.com.ar>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Mar 08, 2023 at 04:22:19PM +0100, Rodrigo Campos wrote:
> In order to create a nested user namespace, we need to re-set the
> PR_SET_DUMPABLE attribute after switching the effective UID/GID. Clarify
> this in the section about nested user namespaces.
> 
> Having this note would have saved me some time debugging.
> 
> Signed-off-by: Rodrigo Campos <rodrigo@sdfg.com.ar>
> ---
>  man7/user_namespaces.7 | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git man7/user_namespaces.7 man7/user_namespaces.7
> index 6647b02bf..18d85a5d6 100644
> --- man7/user_namespaces.7
> +++ man7/user_namespaces.7
> @@ -91,6 +91,23 @@ The
>  operation can be used to discover the parental relationship
>  between user namespaces; see
>  .BR ioctl_ns (2).
> +.PP
> +When creating a user namespace is often common to change the effective UID and
> +GID of the process to the ones in the user namespace. Bear in mind that doing
> +so, as described in
> +.BR prctl (2),
> +the
> +.B PR_SET_DUMPABLE
> +attribute is reset. 
> +If a process is not dumpable,
> +the ownership of files in the process's
> +.IR /proc/ pid
> +directory is affected as described in
> +.BR proc (5).
> +Therefore, you may want to reset
> +.B PR_SET_DUMPABLE
> +after changing the effective UID/GID, in order to be allowed to write the
> +mapping files of a nested user namespace.

I would probably phrase this sm like:

"A task that changes one of its effective ids will have its dumpability
reset to the value in /proc/sys/fs/suid_dumpable. This may affect the
ownership of proc files of child processes and may thus cause the parent
to lack the permissions to write to mapping files of child processes
running in a new user namespace. In such cases making the parent process
dumpable before creating a child process in a new user namespace may
rectify this problem. See prctl (2) and proc (5) for details
on how ownership is affected."

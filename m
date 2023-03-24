Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B6C56C84EE
	for <lists+linux-man@lfdr.de>; Fri, 24 Mar 2023 19:25:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229908AbjCXSY7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Mar 2023 14:24:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229734AbjCXSY6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Mar 2023 14:24:58 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14E8DCDC4
        for <linux-man@vger.kernel.org>; Fri, 24 Mar 2023 11:24:56 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id x17so3362371lfu.5
        for <linux-man@vger.kernel.org>; Fri, 24 Mar 2023 11:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679682294;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UrQIhSdM+8WLTB6Qmw9LFWQU9HFYaYAijEQpunJboUU=;
        b=XcAUN8xbJxHdAUlPcudWyCAX1/wIqpDqXcExU84AO7X59+5EdLaZMfIeGriYwp31wG
         XdXJrndA+o2p+x4CVlkKbQOtyJDRvFBCL/bg3bKryPZ+DE3kHoklIkk6bBkkMZhHNWxv
         k9JtePoCxcW5gdqVgYZDOXPfCrKA6WevvL4B4MK1Aun53Pmui2eb3DIowRXPqI+rSspm
         Aa2mpDhkKi9wZrI7ekyV2hykq0mP95jZCkmpCeslGsgEqTj83GTz3eaVa660mO7DM7nA
         7XUn8gaEo3SiL+/Pfey+Tati2Jsu1LdB4luzPTQhRlAaPUStmluzEdbqkaiI87jQUcEk
         db9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679682294;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UrQIhSdM+8WLTB6Qmw9LFWQU9HFYaYAijEQpunJboUU=;
        b=gBHbCwV5OZot/f3hH9NIAS+5zVqDVFnbUz4kmTMIaaywm+1uXIyX4F5v7cUFV6yf6O
         98ZsSPafxhw7e9ijP1W1HnSsd2rmf0OZneo9KbwUhHf+E/mFt1Sc1+vLLv6oJcv+mF9t
         4uMVSRIHR9CzIC1RIBSWGJ0K80sWJVHQYnGgbBbTCp+HgsNES8NHLVuUbo1B/KvkVT+1
         SGvm7FwzfMOH/1fshmxLO6oJIliyJg8Uk3Sw4yyGqInGzRlgH0Z3ASu11IQDQEQqYX9c
         50oeXdQq95iap6raV+95axO2mdz0ncoUygkqalYp2mqugMhUIQk/9V/rEy27iC+WH9xu
         QfPQ==
X-Gm-Message-State: AAQBX9fD6Lmyjt3Qpr3FqseQmg874S+oB5rBLLGEbDYS63jR/8w0UVjk
        1I9993eBlMOswDehWwY85rY=
X-Google-Smtp-Source: AKy350bLvj9kccVFcLHA//Rxr3SKdIdugH7bw64z5ijp8nivOQfxxeTXRJydA4TWnhnpULuuDuLiqQ==
X-Received: by 2002:ac2:5df0:0:b0:4dd:cb1d:b3cc with SMTP id z16-20020ac25df0000000b004ddcb1db3ccmr1181681lfq.11.1679682294311;
        Fri, 24 Mar 2023 11:24:54 -0700 (PDT)
Received: from localhost ([2a02:168:633b:1:7c09:9c3b:256e:8ba1])
        by smtp.gmail.com with ESMTPSA id o25-20020ac24959000000b004e84d64ab51sm3497872lfi.58.2023.03.24.11.24.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Mar 2023 11:24:54 -0700 (PDT)
Date:   Fri, 24 Mar 2023 19:24:52 +0100
From:   =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v5 3/3] landlock.7: Explain the best-effort fallback
 mechanism in the example
Message-ID: <20230324.449c0a64f654@gnoack.org>
References: <20230324172419.117632-1-gnoack3000@gmail.com>
 <20230324172419.117632-3-gnoack3000@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230324172419.117632-3-gnoack3000@gmail.com>
X-Spam-Status: No, score=0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

P.S.: I went back and forth a bit with the example,
but ended up implementing the full backwards compatibility
across all three existing Landlock versions for now.

The example corresponds to the simple case 1 from
https://blog.gnoack.org/post/landlock-best-effort/,
where the program does *not* need the refer right
after Landlock restriction.
This is not much more complicated than the variant
which is compatible with ABI V2 and V3.

Below the new part of the example,
I added a paragraph to talk about case 2,
where the program *does* need the refer right.
I hope this will be enough to keep most people
from implementing the fallback the wrong way.

Case 3 from the weblog article (where it can be either)
can be deduced with normal logic reasoning and hopefully
should not need additional explanation. -- You need
to figure out at runtime whether you are in case 1 or 2,
and then apply the respective logic.

Let me know what you think!
–Günther

On Fri, Mar 24, 2023 at 06:24:19PM +0100, Günther Noack wrote:
> Signed-off-by: Günther Noack <gnoack3000@gmail.com>
> ---
>  man7/landlock.7 | 65 ++++++++++++++++++++++++++++++++++++++++++++++---
>  1 file changed, 61 insertions(+), 4 deletions(-)
> 
> diff --git a/man7/landlock.7 b/man7/landlock.7
> index 9c305edef..d1214ba27 100644
> --- a/man7/landlock.7
> +++ b/man7/landlock.7
> @@ -393,11 +393,14 @@ accessible through these system call families:
>  Future Landlock evolutions will enable to restrict them.
>  .SH EXAMPLES
>  We first need to create the ruleset that will contain our rules.
> +.PP
>  For this example,
>  the ruleset will contain rules that only allow read actions,
>  but write actions will be denied.
>  The ruleset then needs to handle both of these kinds of actions.
> -See below for the description of filesystem actions.
> +See the
> +.B DESCRIPTION
> +section for the description of filesystem actions.
>  .PP
>  .in +4n
>  .EX
> @@ -420,7 +423,57 @@ attr.handled_access_fs =
>          LANDLOCK_ACCESS_FS_MAKE_SYM |
>          LANDLOCK_ACCESS_FS_REFER |
>          LANDLOCK_ACCESS_FS_TRUNCATE;
> +.EE
> +.in
> +.PP
> +To be compatible with older Linux versions,
> +we detect the available Landlock ABI version,
> +and only use the available subset of access rights:
> +.PP
> +.in +4n
> +.EX
> +/* Table of available file system access rights by ABI version */
> +__u64 landlock_fs_access_rights[] = {
> +    (1ULL << 13) \- 1,  /* ABI v1                 */
> +    (1ULL << 14) \- 1,  /* ABI v2: add "refer"    */
> +    (1ULL << 15) \- 1,  /* ABI v3: add "truncate" */
> +};
> +
> +int abi = landlock_create_ruleset(NULL, 0,
> +                                  LANDLOCK_CREATE_RULESET_VERSION);
> +if (abi <= 0) {
> +    perror("Giving up \- No Landlock support");
> +    exit(EXIT_FAILURE);
> +}
> +if (abi > 3)
> +    abi = 3;
>  
> +/* Only use the available rights in the ruleset. */
> +attr.handled_access_fs &= landlock_fs_access_rights[abi \- 1];
> +.EE
> +.in
> +.PP
> +The available access rights for each ABI version are listed in the
> +.B VERSIONS
> +section.
> +.PP
> +If our program needed to create hard links or rename files between different directories
> +.RB ( LANDLOCK_ACCESS_FS_REFER ),
> +we would require the following change to the backwards compatibility logic:
> +Directory reparenting is not possible in a process restricted with Landlock ABI version 1.
> +Therefore,
> +if the program needed to do file reparenting,
> +and if only Landlock ABI version 1 was available,
> +we could not restrict the process.
> +.PP
> +Now that the ruleset attributes are determined,
> +we create the Landlock ruleset
> +and acquire a file descriptor as a handle to it,
> +using
> +.BR landlock_create_ruleset (2):
> +.PP
> +.in +4n
> +.EX
>  ruleset_fd = landlock_create_ruleset(&attr, sizeof(attr), 0);
>  if (ruleset_fd == \-1) {
>      perror("Failed to create a ruleset");
> @@ -429,9 +482,13 @@ if (ruleset_fd == \-1) {
>  .EE
>  .in
>  .PP
> -We can now add a new rule to this ruleset thanks to the returned file
> -descriptor referring to this ruleset.
> -The rule will only allow reading the file hierarchy
> +We can now add a new rule to the ruleset through the ruleset's file descriptor.
> +The requested access rights must be a subset of the access rights
> +which were specified in
> +.I attr.handled_access_fs
> +at ruleset creation time.
> +.PP
> +In this example, the rule will only allow reading the file hierarchy
>  .IR /usr .
>  Without another rule, write actions would then be denied by the ruleset.
>  To add
> -- 
> 2.39.2
> 

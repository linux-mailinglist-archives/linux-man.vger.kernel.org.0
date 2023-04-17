Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9BE7F6E5203
	for <lists+linux-man@lfdr.de>; Mon, 17 Apr 2023 22:45:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229652AbjDQUpP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Apr 2023 16:45:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229521AbjDQUpO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Apr 2023 16:45:14 -0400
Received: from smtp-1908.mail.infomaniak.ch (smtp-1908.mail.infomaniak.ch [IPv6:2001:1600:4:17::1908])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F0A7422E
        for <linux-man@vger.kernel.org>; Mon, 17 Apr 2023 13:45:12 -0700 (PDT)
Received: from smtp-2-0001.mail.infomaniak.ch (unknown [10.5.36.108])
        by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4Q0fFJ0xGgzMq0W8;
        Mon, 17 Apr 2023 22:45:08 +0200 (CEST)
Received: from unknown by smtp-2-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4Q0fFH1JnGzMppvT;
        Mon, 17 Apr 2023 22:45:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=digikod.net;
        s=20191114; t=1681764308;
        bh=DqIiKOyu5n3TIyrbgrm46YhNiGLM9pVkvpufP/FlyvA=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=Ki88cHdYq5+4+GiVVNGmEQ4L0oCtWh+3UERcti04vvhrZF7f5+RoV7iu07b6ECCTg
         4/eRQDPgKmzFqZDm6S2eGQnbGqmFaUWpvpFhKhIWAopeYiiAekpy8HITQ1Yk7AG/3L
         pdAou8SKGFwEVH9ww0MjE5k+369NaCVQyOoGVktA=
Message-ID: <5d90e3b0-1577-7efd-03b8-f94b6e50fbc1@digikod.net>
Date:   Mon, 17 Apr 2023 22:45:06 +0200
MIME-Version: 1.0
User-Agent: 
Subject: Re: [PATCH v7 1/1] landlock.7: Explain the best-effort fallback
 mechanism in the example
Content-Language: en-US
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20230417172513.5731-1-gnoack3000@gmail.com>
 <20230417172513.5731-2-gnoack3000@gmail.com>
From:   =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
In-Reply-To: <20230417172513.5731-2-gnoack3000@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Infomaniak-Routing: alpha
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


On 17/04/2023 19:25, Günther Noack wrote:
> Signed-off-by: Günther Noack <gnoack3000@gmail.com>
> ---
>   man7/landlock.7 | 73 ++++++++++++++++++++++++++++++++++++++++++++++---
>   1 file changed, 69 insertions(+), 4 deletions(-)
> 
> diff --git a/man7/landlock.7 b/man7/landlock.7
> index 24488465e..16feef42c 100644
> --- a/man7/landlock.7
> +++ b/man7/landlock.7
> @@ -394,11 +394,14 @@ accessible through these system call families:
>   Future Landlock evolutions will enable to restrict them.
>   .SH EXAMPLES
>   We first need to create the ruleset that will contain our rules.
> +.PP
>   For this example,
>   the ruleset will contain rules that only allow read actions,
>   but write actions will be denied.
>   The ruleset then needs to handle both of these kinds of actions.
> -See below for the description of filesystem actions.
> +See the
> +.B DESCRIPTION
> +section for the description of filesystem actions.
>   .PP
>   .in +4n
>   .EX
> @@ -421,7 +424,65 @@ attr.handled_access_fs =
>           LANDLOCK_ACCESS_FS_MAKE_SYM |
>           LANDLOCK_ACCESS_FS_REFER |
>           LANDLOCK_ACCESS_FS_TRUNCATE;
> +.EE
> +.in
> +.PP
> +To be compatible with older Linux versions,
> +we detect the available Landlock ABI version,
> +and only use the available subset of access rights:
> +.PP
> +.in +4n
> +.EX
> +/*
> + * Table of available file system access rights by ABI version,
> + * numbers hardcoded to keep the example short.
> + */
> +__u64 landlock_fs_access_rights[] = {
> +    (1ULL << 13) \- 1,  /* ABI v1                 */

This would be more explicit and avoid hardcoded values with:
(LANDLOCK_ACCESS_FS_MAKE_SYM << 1) - 1,
(LANDLOCK_ACCESS_FS_REFER << 1) - 1,
(LANDLOCK_ACCESS_FS_TRUNCATE << 1) - 1,


> +    (1ULL << 14) \- 1,  /* ABI v2: add "refer"    */
> +    (1ULL << 15) \- 1,  /* ABI v3: add "truncate" */
> +};
> +
> +int abi = landlock_create_ruleset(NULL, 0,
> +                                  LANDLOCK_CREATE_RULESET_VERSION);
> +if (abi <= 0) {
> +    /*
> +     * Kernel too old, not compiled with Landlock,
> +     * or Landlock was not enabled at boot time.
> +     */
> +    perror("Giving up \- No Landlock support");

The cause of the error will be appended by perror, so we can just say 
that we cannot use it:
perror("Unable to use Landlock");

As a side note, this syscall and this flag should never return 0, but if 
it does (e.g. because of weird seccomp filter), the errno value might be 
unspecified.


> +    exit(EXIT_FAILURE);

I'm not sure this example code should exit if Landlock is not supported 
because (most) developers don't want to exit if some (optional) security 
features are not available.


> +}
> +abi = MIN(abi, 3);
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
> +If our program needed to create hard links
> +or rename files between different directories
> +.RB ( LANDLOCK_ACCESS_FS_REFER ),
> +we would require the following change to the backwards compatibility logic:
> +Directory reparenting is not possible
> +in a process restricted with Landlock ABI version 1.
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
>   ruleset_fd = landlock_create_ruleset(&attr, sizeof(attr), 0);
>   if (ruleset_fd == \-1) {
>       perror("Failed to create a ruleset");
> @@ -430,9 +491,13 @@ if (ruleset_fd == \-1) {
>   .EE
>   .in
>   .PP
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
>   .IR /usr .
>   Without another rule, write actions would then be denied by the ruleset.
>   To add

Thanks Günther!

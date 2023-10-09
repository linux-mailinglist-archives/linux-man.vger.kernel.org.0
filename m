Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D12A47BE677
	for <lists+linux-man@lfdr.de>; Mon,  9 Oct 2023 18:34:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1376996AbjJIQej (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 9 Oct 2023 12:34:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1376275AbjJIQei (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 9 Oct 2023 12:34:38 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D2099E
        for <linux-man@vger.kernel.org>; Mon,  9 Oct 2023 09:34:37 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A4E5C433C8;
        Mon,  9 Oct 2023 16:34:35 +0000 (UTC)
Date:   Mon, 9 Oct 2023 17:34:32 +0100
From:   Catalin Marinas <catalin.marinas@arm.com>
To:     Florent Revest <revest@chromium.org>
Cc:     alx@kernel.org, linux-man@vger.kernel.org, joey.gouly@arm.com,
        akpm@linux-foundation.org, keescook@chromium.org
Subject: Re: [PATCH] prctl.2: Document PR_SET_MDWE and PR_GET_MDWE
Message-ID: <ZSQrmNWtNEiIj7bl@arm.com>
References: <20231003155010.3651349-1-revest@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231003155010.3651349-1-revest@chromium.org>
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,
        SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Oct 03, 2023 at 05:50:10PM +0200, Florent Revest wrote:
> Memory-Deny-Write-Execute is a W^X process control originally introduced
> by Joey Gouly. I'm the author of the PR_MDWE_NO_INHERIT flag.
> 
> Signed-off-by: Florent Revest <revest@chromium.org>
> ---
>  man2/prctl.2 | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index d845b0905..67e6e2ff0 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -2041,6 +2041,33 @@ the copy will be truncated.
>  Return (as the function result)
>  the full length of the auxiliary vector.
>  \fIarg4\fP and \fIarg5\fP must be 0.
> +.TP
> +.BR PR_SET_MDWE " (since Linux 6.3)"
> +.\" commit b507808ebce23561d4ff8c2aa1fb949fe402bc61
> +Set the process' Memory-Deny-Write-Execute protection mask.
> +.IR arg2
> +must be a bitmask of:
> +.RS
> +.\"
> +.TP
> +.B PR_MDWE_REFUSE_EXEC_GAIN
> +New memory mapping protections can't be writable and executable. Non-executable
> +mappings can't become executable.
> +.TP
> +.B PR_MDWE_NO_INHERIT " (since Linux 6.6)"
> +.\" commit 2a87e5520554034e8c423479740f95bea4a086a0
> +Do not propagate MDWE protection to child processes on

Should this mention that PR_MDWE_NO_INHERIT requires
PR_MDWE_REFUSE_EXEC_GAIN (unless I forgot how this was supposed to
work).

-- 
Catalin

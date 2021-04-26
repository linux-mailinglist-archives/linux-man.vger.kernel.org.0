Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8843A36B91A
	for <lists+linux-man@lfdr.de>; Mon, 26 Apr 2021 20:39:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236294AbhDZSkT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Apr 2021 14:40:19 -0400
Received: from vmicros1.altlinux.org ([194.107.17.57]:51218 "EHLO
        vmicros1.altlinux.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238623AbhDZSkL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Apr 2021 14:40:11 -0400
Received: from mua.local.altlinux.org (mua.local.altlinux.org [192.168.1.14])
        by vmicros1.altlinux.org (Postfix) with ESMTP id 1EBC372C8B0;
        Mon, 26 Apr 2021 21:39:28 +0300 (MSK)
Received: by mua.local.altlinux.org (Postfix, from userid 508)
        id 126D67CC8A7; Mon, 26 Apr 2021 21:39:28 +0300 (MSK)
Date:   Mon, 26 Apr 2021 21:39:28 +0300
From:   "Dmitry V. Levin" <ldv@altlinux.org>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PING v1] [PATCH] ptrace.2: mention PTRACE_GET_SYSCALL_INFO in
 RETURN VALUE section
Message-ID: <20210426183927.GA11060@altlinux.org>
References: <20210222164256.GA1943@altlinux.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210222164256.GA1943@altlinux.org>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Ping?

On Mon, Feb 22, 2021 at 07:42:57PM +0300, Dmitry V. Levin wrote:
> Mirror the wording about PTRACE_GET_SYSCALL_INFO return value semantics
> from "DESCRIPTION" section to "RETURN VALUE" section.
> 
> Reported-by: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
> Complements: fc91449cb "ptrace.2: Document PTRACE_GET_SYSCALL_INFO"
> Signed-off-by: Dmitry V. Levin <ldv@altlinux.org>
> ---
>  man2/ptrace.2 | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/ptrace.2 b/man2/ptrace.2
> index 5245338ba..c5e75c274 100644
> --- a/man2/ptrace.2
> +++ b/man2/ptrace.2
> @@ -2327,8 +2327,11 @@ On success, the
>  requests return the requested data (but see NOTES),
>  the
>  .B PTRACE_SECCOMP_GET_FILTER
> -request returns the number of instructions in the BPF program, and
> -other requests return zero.
> +request returns the number of instructions in the BPF program,
> +the
> +.B PTRACE_GET_SYSCALL_INFO
> +request returns the number of bytes available to be written by the kernel,
> +and other requests return zero.
>  .PP
>  On error, all requests return \-1, and
>  .I errno
> -- 
> ldv

-- 
ldv

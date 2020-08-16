Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E93BF2456A8
	for <lists+linux-man@lfdr.de>; Sun, 16 Aug 2020 10:12:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728120AbgHPIMm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 16 Aug 2020 04:12:42 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:49724 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725986AbgHPIMk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 16 Aug 2020 04:12:40 -0400
Received: from ip5f5af70b.dynamic.kabel-deutschland.de ([95.90.247.11] helo=wittgenstein)
        by youngberry.canonical.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <christian.brauner@ubuntu.com>)
        id 1k7DmG-0000GN-Eh; Sun, 16 Aug 2020 08:12:28 +0000
Date:   Sun, 16 Aug 2020 10:12:27 +0200
From:   Christian Brauner <christian.brauner@ubuntu.com>
To:     minchan@kernel.org
Cc:     alexander.h.duyck@linux.intel.com, axboe@kernel.dk,
        bgeffon@google.com, christian@brauner.io, dancol@google.com,
        hannes@cmpxchg.org, jannh@google.com, joaodias@google.com,
        joel@joelfernandes.org, ktkhai@virtuozzo.com,
        linux-man@vger.kernel.org, linux-mm@kvack.org, mhocko@suse.com,
        mm-commits@vger.kernel.org, oleksandr@redhat.com,
        rientjes@google.com, shakeelb@google.com, sj38.park@gmail.com,
        sjpark@amazon.de, sonnyrao@google.com, sspatil@google.com,
        surenb@google.com, timmurray@google.com,
        torvalds@linux-foundation.org, vbabka@suse.cz,
        Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [patch 17/39] mm/madvise: introduce process_madvise() syscall:
 an external memory hinting API
Message-ID: <20200816081227.ngw3l45c5uncesmr@wittgenstein>
References: <20200814172939.55d6d80b6e21e4241f1ee1f3@linux-foundation.org>
 <20200815003058.6OQJpEXTM%akpm@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200815003058.6OQJpEXTM%akpm@linux-foundation.org>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Aug 14, 2020 at 05:30:58PM -0700, Andrew Morton wrote:
> From: Minchan Kim <minchan@kernel.org>
> Subject: mm/madvise: introduce process_madvise() syscall: an external memory hinting API
> 

<snip>

> +SYSCALL_DEFINE5(process_madvise, int, pidfd, const struct iovec __user *, vec,
> +		unsigned long, vlen, int, behavior, unsigned int, flags)
> +{
> +	ssize_t ret;
> +	struct iovec iovstack[UIO_FASTIOV];
> +	struct iovec *iov = iovstack;
> +	struct iov_iter iter;
> +
> +	ret = import_iovec(READ, vec, vlen, ARRAY_SIZE(iovstack), &iov, &iter);
> +	if (ret >= 0) {
> +		ret = do_process_madvise(pidfd, &iter, behavior, flags);
> +		kfree(iov);
> +	}
> +	return ret;
> +}
> +
> +#ifdef CONFIG_COMPAT
> +COMPAT_SYSCALL_DEFINE5(process_madvise, compat_int_t, pidfd,
> +			const struct compat_iovec __user *, vec,
> +			compat_ulong_t, vlen,
> +			compat_int_t, behavior,
> +			compat_uint_t, flags)
> +
> +{
> +	ssize_t ret;
> +	struct iovec iovstack[UIO_FASTIOV];
> +	struct iovec *iov = iovstack;
> +	struct iov_iter iter;
> +
> +	ret = compat_import_iovec(READ, vec, vlen, ARRAY_SIZE(iovstack),
> +				&iov, &iter);
> +	if (ret >= 0) {
> +		ret = do_process_madvise(pidfd, &iter, behavior, flags);
> +		kfree(iov);
> +	}
> +	return ret;
> +}
> +#endif

Note, I'm only commenting on this patch because it has already been
dropped for this merge window. Otherwise I wouldn't interfer with stuff
that has already been sent for inclusion.

I haven't noticed this before but why do you need this
COMPAT_SYSCALL_DEFINE5()? New code we add today tries pretty hard to
avoid the compat syscall definitions. (See what we did for
pidfd_send_signal(), seccomp, and in io_uring and in various other places.)

Afaict, this could just be sm like (__completely untested__):

static inline int madv_import_iovec(int type, const struct iovec __user *uvec, unsigned nr_segs,
				    unsigned fast_segs, struct iovec **iov, struct iov_iter *i)
{
#ifdef CONFIG_COMPAT
	if (in_compat_syscall())
		return compat_import_iovec(type, (struct compat_iovec __user *)uvec, nr_segs,
					   fast_segs, iov, i);
#endif

	return import_iovec(type, uvec, nr_segs, fast_segs, iov, i);
}

SYSCALL_DEFINE5(process_madvise, int, pidfd, const struct iovec __user *, vec,
		 unsigned long, vlen, int, behavior, unsigned int, flags)
{
	ssize_t ret;
	struct iovec iovstack[UIO_FASTIOV];
	struct iovec *iov = iovstack;
	struct iov_iter iter;

	ret = madv_import_iovec(READ, vec, vlen, ARRAY_SIZE(iovstack), &iov, &iter);
	if (ret < 0)
		return ret;

	ret = do_process_madvise(pidfd, &iter, behavior, flags);
	kfree(iov);
	return ret;
}

or is there are specific reason this wouldn't work here?

Christian

Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9CC19207C90
	for <lists+linux-man@lfdr.de>; Wed, 24 Jun 2020 22:01:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2406361AbgFXUA2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Jun 2020 16:00:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2406356AbgFXUA0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Jun 2020 16:00:26 -0400
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com [IPv6:2607:f8b0:4864:20::1044])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75A04C061795
        for <linux-man@vger.kernel.org>; Wed, 24 Jun 2020 13:00:26 -0700 (PDT)
Received: by mail-pj1-x1044.google.com with SMTP id m2so1651480pjv.2
        for <linux-man@vger.kernel.org>; Wed, 24 Jun 2020 13:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version;
        bh=Ic2rSOyLLU92IxsDQa40KxAfIh3emFoAg8+8Z9zBZLk=;
        b=kU5gpx3Y6OC13BtuXk0HauEe4SnRRBl9UregNtADzr/gVODMa3X+K78kj9+PkS/hgo
         4kiLZcX362HZgzyKxa66ffF8DDThk+b3gALh3jMr8IeI1YmbuV2rqwc48cbGqgyZZY+Z
         Q11nijFgASra09QWSE4BfN8jWLfrmQKArbA+DY3BGeGaN9dHWNnifssKvCb/CLSaAEYw
         TDYKfzaTgGyYnjGj1ShJs/1psqC1fMCA5UWy7fhY5mezCojoQUUI35z0z6HIgKv6q8Ks
         F+4+zS9d6UXUNmMq3qeN0motW+18QfUJSU9wgFyzXIk1ht2AWohuQfZqlYCC7l6xiVh0
         qimA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version;
        bh=Ic2rSOyLLU92IxsDQa40KxAfIh3emFoAg8+8Z9zBZLk=;
        b=Pfiq8mj2eDiy3T1tjg5sUsgIx8kqNMmA/qENfh8SNpQsqEkVilPiUtOCIJCZh8dh3V
         CW/adn1le4Wx95XGegGEOVshRXQzIF0ALuB7BMkUNu2rFz3HT5yVzbIHVkEx7vpO1I1d
         Gk1k/hsX8T43ih7llVsGWubTzkZNhwbpNpIYcroJN/bVsM2n4ws9h6ZyikVtCjQ/jmSX
         cz2rX9DZrrzAZWHFl3sq1H+E4myn5foqeSkqBs379RY5LJDXAJu2LrBnJbK0qKlRV9Qm
         Rv1LgKWqbz1P5tXHsoi7vG/UGLAxokoJ6c1EPWlGhxG6Kb59+c0MZEfHas4yBo4u1KKm
         6MJA==
X-Gm-Message-State: AOAM533G30gNcH1iIUXe0pyG8hU8E8B9no3OVcvXEGS9FL/pwxtBDgcg
        xn2B2yxvoL1VZMwxony3SJdcVA==
X-Google-Smtp-Source: ABdhPJzDSRznzss3ODVL/uvo/3wIGFCth9XaDcjSZv7/h6ukRYzF+vCyOEh7wiGXl5K6d9IXb13qjQ==
X-Received: by 2002:a17:90a:62ca:: with SMTP id k10mr31534169pjs.87.1593028825742;
        Wed, 24 Jun 2020 13:00:25 -0700 (PDT)
Received: from [2620:15c:17:3:3a5:23a7:5e32:4598] ([2620:15c:17:3:3a5:23a7:5e32:4598])
        by smtp.gmail.com with ESMTPSA id fa13sm5948256pjb.39.2020.06.24.13.00.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 13:00:25 -0700 (PDT)
Date:   Wed, 24 Jun 2020 13:00:24 -0700 (PDT)
From:   David Rientjes <rientjes@google.com>
X-X-Sender: rientjes@chino.kir.corp.google.com
To:     Minchan Kim <minchan@kernel.org>
cc:     Andrew Morton <akpm@linux-foundation.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Christian Brauner <christian.brauner@ubuntu.com>,
        linux-mm <linux-mm@kvack.org>, linux-api@vger.kernel.org,
        oleksandr@redhat.com, Suren Baghdasaryan <surenb@google.com>,
        Tim Murray <timmurray@google.com>,
        Sandeep Patil <sspatil@google.com>,
        Sonny Rao <sonnyrao@google.com>,
        Brian Geffon <bgeffon@google.com>,
        Michal Hocko <mhocko@suse.com>,
        Johannes Weiner <hannes@cmpxchg.org>,
        Shakeel Butt <shakeelb@google.com>,
        John Dias <joaodias@google.com>,
        Joel Fernandes <joel@joelfernandes.org>,
        Jann Horn <jannh@google.com>,
        alexander.h.duyck@linux.intel.com, sj38.park@gmail.com,
        Arjun Roy <arjunroy@google.com>,
        Vlastimil Babka <vbabka@suse.cz>, Jens Axboe <axboe@kernel.dk>,
        Daniel Colascione <dancol@google.com>,
        Kirill Tkhai <ktkhai@virtuozzo.com>,
        SeongJae Park <sjpark@amazon.de>, linux-man@vger.kernel.org
Subject: Re: [PATCH v8 2/4] pid: move pidfd_get_pid() to pid.c
In-Reply-To: <20200622192900.22757-3-minchan@kernel.org>
Message-ID: <alpine.DEB.2.22.394.2006241253190.35388@chino.kir.corp.google.com>
References: <20200622192900.22757-1-minchan@kernel.org> <20200622192900.22757-3-minchan@kernel.org>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, 22 Jun 2020, Minchan Kim wrote:

> process_madvise syscall needs pidfd_get_pid function to translate pidfd to
> pid so this patch move the function to kernel/pid.c.
> 
> Link: http://lkml.kernel.org/r/20200302193630.68771-5-minchan@kernel.org
> Signed-off-by: Minchan Kim <minchan@kernel.org>
> Reviewed-by: Suren Baghdasaryan <surenb@google.com>
> Suggested-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> Reviewed-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
> Reviewed-by: Vlastimil Babka <vbabka@suse.cz>
> Cc: Jens Axboe <axboe@kernel.dk>
> Cc: Jann Horn <jannh@google.com>
> Cc: Brian Geffon <bgeffon@google.com>
> Cc: Daniel Colascione <dancol@google.com>
> Cc: Joel Fernandes <joel@joelfernandes.org>
> Cc: Johannes Weiner <hannes@cmpxchg.org>
> Cc: John Dias <joaodias@google.com>
> Cc: Kirill Tkhai <ktkhai@virtuozzo.com>
> Cc: Michal Hocko <mhocko@suse.com>
> Cc: Oleksandr Natalenko <oleksandr@redhat.com>
> Cc: Sandeep Patil <sspatil@google.com>
> Cc: SeongJae Park <sj38.park@gmail.com>
> Cc: SeongJae Park <sjpark@amazon.de>
> Cc: Shakeel Butt <shakeelb@google.com>
> Cc: Sonny Rao <sonnyrao@google.com>
> Cc: Tim Murray <timmurray@google.com>
> Cc: Christian Brauner <christian.brauner@ubuntu.com>
> Cc: <linux-man@vger.kernel.org>

Acked-by: David Rientjes <rientjes@google.com>

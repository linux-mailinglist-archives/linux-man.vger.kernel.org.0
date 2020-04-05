Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 77F4419EC6C
	for <lists+linux-man@lfdr.de>; Sun,  5 Apr 2020 17:51:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726898AbgDEPvf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Apr 2020 11:51:35 -0400
Received: from mga01.intel.com ([192.55.52.88]:48229 "EHLO mga01.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726765AbgDEPvf (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 5 Apr 2020 11:51:35 -0400
IronPort-SDR: y8Ex2z7lktRRQ6kZaK9rzACJ0DrZEg31sPoaGIdh1/F4rJqiJQO7+KCsvlCLZJpsHjaYGwZKov
 DZF0ZAwrOrpQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Apr 2020 08:51:34 -0700
IronPort-SDR: 9H+VnNHNmgemh7OdAcgvyRmttnueGqPJX5owQ9JxCcyH7agdmWjuOTmGrPJaB/mjN5Azw8eXx/
 eZb8TElDz0eQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,348,1580803200"; 
   d="scan'208";a="296445177"
Received: from linux.intel.com ([10.54.29.200])
  by FMSMGA003.fm.intel.com with ESMTP; 05 Apr 2020 08:51:34 -0700
Received: from [10.249.231.111] (abudanko-mobl.ccr.corp.intel.com [10.249.231.111])
        by linux.intel.com (Postfix) with ESMTP id 4251358033E;
        Sun,  5 Apr 2020 08:51:30 -0700 (PDT)
Subject: Re: [PATCH v8 12/12] doc/admin-guide: update kernel.rst with
 CAP_PERFMON information
To:     Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Cc:     Peter Zijlstra <peterz@infradead.org>,
        Alexei Starovoitov <ast@kernel.org>,
        Ingo Molnar <mingo@redhat.com>,
        James Morris <jmorris@namei.org>,
        Namhyung Kim <namhyung@kernel.org>,
        Serge Hallyn <serge@hallyn.com>, Jiri Olsa <jolsa@redhat.com>,
        Song Liu <songliubraving@fb.com>,
        Andi Kleen <ak@linux.intel.com>,
        Stephane Eranian <eranian@google.com>,
        Igor Lubashev <ilubashe@akamai.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        "linux-security-module@vger.kernel.org" 
        <linux-security-module@vger.kernel.org>,
        "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
        "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
        "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
        linux-man@vger.kernel.org
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
 <84c32383-14a2-fa35-16b6-f9e59bd37240@linux.intel.com>
 <20200405141029.GA16896@kernel.org>
 <eb7fd0bd-4043-b51c-9b19-ee0a1d1849e9@linux.intel.com>
 <966244a1-2a2d-8e47-b805-2effa46fe8cd@linux.intel.com>
 <20200405150557.GP9917@kernel.org>
From:   Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <50b54ca3-2edb-d2be-e42e-57e0de12a052@linux.intel.com>
Date:   Sun, 5 Apr 2020 18:51:29 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200405150557.GP9917@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


On 05.04.2020 18:05, Arnaldo Carvalho de Melo wrote:
> Em Sun, Apr 05, 2020 at 05:54:37PM +0300, Alexey Budankov escreveu:
>>
>> On 05.04.2020 17:41, Alexey Budankov wrote:
>>>
>>> On 05.04.2020 17:10, Arnaldo Carvalho de Melo wrote:
>>>> Em Thu, Apr 02, 2020 at 11:54:39AM +0300, Alexey Budankov escreveu:
>>>>>
>>>>> Update kernel.rst documentation file with the information
>>>>> related to usage of CAP_PERFMON capability to secure performance
>>>>> monitoring and observability operations in system.
>>>>
>>>> This one is failing in my perf/core branch, please take a look. I'm
>>
>> Please try applying this:
> 
> Thanks, applied with the original commit log message,

Thanks,
Alexey

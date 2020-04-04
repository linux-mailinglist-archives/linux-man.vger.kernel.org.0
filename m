Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F182619E367
	for <lists+linux-man@lfdr.de>; Sat,  4 Apr 2020 10:18:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725876AbgDDISN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 4 Apr 2020 04:18:13 -0400
Received: from mga03.intel.com ([134.134.136.65]:7558 "EHLO mga03.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725730AbgDDISM (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 4 Apr 2020 04:18:12 -0400
IronPort-SDR: pTuOzoX0oZHsGbI1XX2yEEA6qKwf7IfXTx/lOlXAbGcPolN93BENPMATfk/3WfEPwa700Z/GC8
 qza/HhhG/gTQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Apr 2020 01:18:11 -0700
IronPort-SDR: oWNvoibv/NVKa6nUxJdw9GnxF7+JVv9j3/h3sDQzlGAbdflpMLM9iNTXJpIG5pdiQp8BytKN+t
 lB0vFI0Ft37w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,343,1580803200"; 
   d="scan'208";a="451544685"
Received: from linux.intel.com ([10.54.29.200])
  by fmsmga006.fm.intel.com with ESMTP; 04 Apr 2020 01:18:10 -0700
Received: from [10.249.93.66] (abudanko-mobl.ccr.corp.intel.com [10.249.93.66])
        by linux.intel.com (Postfix) with ESMTP id 764C65802C8;
        Sat,  4 Apr 2020 01:18:03 -0700 (PDT)
Subject: Re: [PATCH v8 04/12] perf tool: extend Perf tool with CAP_PERFMON
 capability support
To:     Namhyung Kim <namhyung@kernel.org>
Cc:     Peter Zijlstra <peterz@infradead.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Alexei Starovoitov <ast@kernel.org>,
        Ingo Molnar <mingo@redhat.com>,
        James Morris <jmorris@namei.org>,
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
 <a66d5648-2b8e-577e-e1f2-1d56c017ab5e@linux.intel.com>
 <CAM9d7cgRczLcyUi1y96a=87Hh3BhFgRUS8Kw=DBg4C0hVYj2HQ@mail.gmail.com>
From:   Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <ab15a8af-26a6-f8e7-cd7a-6b3fde99eaf9@linux.intel.com>
Date:   Sat, 4 Apr 2020 11:18:01 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAM9d7cgRczLcyUi1y96a=87Hh3BhFgRUS8Kw=DBg4C0hVYj2HQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Namhyung,

On 04.04.2020 5:18, Namhyung Kim wrote:
> Hello,
> 
> On Thu, Apr 2, 2020 at 5:47 PM Alexey Budankov
> <alexey.budankov@linux.intel.com> wrote:
>>
>>
>> Extend error messages to mention CAP_PERFMON capability as an option
>> to substitute CAP_SYS_ADMIN capability for secure system performance
>> monitoring and observability operations. Make perf_event_paranoid_check()
>> and __cmd_ftrace() to be aware of CAP_PERFMON capability.
>>
>> CAP_PERFMON implements the principal of least privilege for performance
>> monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39
>> principle of least privilege: A security design principle that states
>> that a process or program be granted only those privileges (e.g.,
>> capabilities) necessary to accomplish its legitimate function, and only
>> for the time that such privileges are actually required)
>>
>> For backward compatibility reasons access to perf_events subsystem remains
>> open for CAP_SYS_ADMIN privileged processes but CAP_SYS_ADMIN usage for
>> secure perf_events monitoring is discouraged with respect to CAP_PERFMON
>> capability.
>>
>> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
>> Reviewed-by: James Morris <jamorris@linux.microsoft.com>
> 
> Acked-by: Namhyung Kim <namhyung@kernel.org>

Thanks! I appreciate you involvement and effort.

~Alexey

> 
> Thanks
> Namhyung
> 
